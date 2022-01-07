; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.nouveau_connector = type { %struct.TYPE_3__, %struct.drm_connector*, i32 }
%struct.TYPE_3__ = type { %struct.drm_connector*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @nouveau_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.nouveau_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %4)
  store %struct.nouveau_connector* %5, %struct.nouveau_connector** %3, align 8
  %6 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %6, i32 0, i32 2
  %8 = call i32 @nvif_notify_fini(i32* %7)
  %9 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %9, i32 0, i32 1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %12 = call i32 @kfree(%struct.drm_connector* %11)
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call i32 @drm_connector_unregister(%struct.drm_connector* %13)
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = call i32 @drm_connector_cleanup(%struct.drm_connector* %15)
  %17 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %23, i32 0, i32 0
  %25 = call i32 @drm_dp_cec_unregister_connector(%struct.TYPE_3__* %24)
  %26 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %27 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %26, i32 0, i32 0
  %28 = call i32 @drm_dp_aux_unregister(%struct.TYPE_3__* %27)
  %29 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.drm_connector*, %struct.drm_connector** %31, align 8
  %33 = call i32 @kfree(%struct.drm_connector* %32)
  br label %34

34:                                               ; preds = %22, %1
  %35 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %36 = call i32 @kfree(%struct.drm_connector* %35)
  ret void
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local i32 @nvif_notify_fini(i32*) #1

declare dso_local i32 @kfree(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_cec_unregister_connector(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_dp_aux_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
