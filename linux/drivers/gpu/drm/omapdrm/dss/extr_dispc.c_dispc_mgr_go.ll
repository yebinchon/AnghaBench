; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dispc_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"GO %s\0A\00", align 1
@mgr_desc = common dso_local global %struct.TYPE_2__* null, align 8
@DISPC_MGR_FLD_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32)* @dispc_mgr_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_go(%struct.dispc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dispc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @dispc_mgr_is_enabled(%struct.dispc_device* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dispc_mgr_go_busy(%struct.dispc_device* %12, i32 %13)
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mgr_desc, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DSSDBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DISPC_MGR_FLD_GO, align 4
  %26 = call i32 @mgr_fld_write(%struct.dispc_device* %23, i32 %24, i32 %25, i32 1)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dispc_mgr_is_enabled(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_mgr_go_busy(%struct.dispc_device*, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @mgr_fld_write(%struct.dispc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
