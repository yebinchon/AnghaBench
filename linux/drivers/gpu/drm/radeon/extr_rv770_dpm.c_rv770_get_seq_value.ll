; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_seq_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_seq_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_pl = type { i32 }

@ATOM_PPLIB_R600_FLAGS_LOWPOWER = common dso_local global i32 0, align 4
@MC_CG_SEQ_DRAMCONF_S0 = common dso_local global i32 0, align 4
@MC_CG_SEQ_DRAMCONF_S1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_get_seq_value(%struct.radeon_device* %0, %struct.rv7xx_pl* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_pl*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %4, align 8
  %5 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %4, align 8
  %6 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_LOWPOWER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MC_CG_SEQ_DRAMCONF_S0, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MC_CG_SEQ_DRAMCONF_S1, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
