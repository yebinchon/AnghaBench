; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_edp_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_edp_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edp_connector = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @edp_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.edp_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.edp_connector* @to_edp_connector(%struct.drm_connector* %4)
  store %struct.edp_connector* %5, %struct.edp_connector** %3, align 8
  %6 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = call i32 @drm_connector_cleanup(%struct.drm_connector* %7)
  %9 = load %struct.edp_connector*, %struct.edp_connector** %3, align 8
  %10 = call i32 @kfree(%struct.edp_connector* %9)
  ret void
}

declare dso_local %struct.edp_connector* @to_edp_connector(%struct.drm_connector*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.edp_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
