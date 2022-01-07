; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_panel_cond_set_v142.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_panel_cond_set_v142.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i32, i64, i64 }

@s6e8aa0_panel_cond_set_v142.aids = internal constant [8 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 96, i32 128, i32 160], align 16
@PANELCTL_GTCON_MASK = common dso_local global i32 0, align 4
@PANELCTL_GTCON_110 = common dso_local global i32 0, align 4
@PANELCTL_SS_MASK = common dso_local global i32 0, align 4
@PANELCTL_SS_1_800 = common dso_local global i32 0, align 4
@PANELCTL_CLK1_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_CLK2_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_CLK1_000 = common dso_local global i32 0, align 4
@PANELCTL_CLK2_001 = common dso_local global i32 0, align 4
@PANELCTL_INT1_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_INT2_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_INT1_000 = common dso_local global i32 0, align 4
@PANELCTL_INT2_001 = common dso_local global i32 0, align 4
@PANELCTL_BICTL_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_BICTLB_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_BICTL_000 = common dso_local global i32 0, align 4
@PANELCTL_BICTLB_001 = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK1_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK1B_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK1_110 = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK1B_110 = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK2_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK2B_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK2_110 = common dso_local global i32 0, align 4
@PANELCTL_EM_CLK2B_110 = common dso_local global i32 0, align 4
@PANELCTL_EM_INT1_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_EM_INT2_CON_MASK = common dso_local global i32 0, align 4
@PANELCTL_EM_INT1_000 = common dso_local global i32 0, align 4
@PANELCTL_EM_INT2_001 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e8aa0*)* @s6e8aa0_panel_cond_set_v142 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e8aa0_panel_cond_set_v142(%struct.s6e8aa0* %0) #0 {
  %2 = alloca %struct.s6e8aa0*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %2, align 8
  %11 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %12 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @s6e8aa0_panel_cond_set_v142.aids, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  store i32 61, i32* %4, align 4
  store i32 200, i32* %5, align 4
  store i32 8, i32* %6, align 4
  store i32 72, i32* %7, align 4
  store i32 255, i32* %8, align 4
  store i32 255, i32* %9, align 4
  store i32 200, i32* %10, align 4
  %18 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %19 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @PANELCTL_GTCON_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PANELCTL_GTCON_110, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %32 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* @PANELCTL_SS_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @PANELCTL_SS_1_800, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %45 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %50 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %120

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @PANELCTL_CLK1_CON_MASK, align 4
  %55 = load i32, i32* @PANELCTL_CLK2_CON_MASK, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @PANELCTL_CLK1_000, align 4
  %61 = load i32, i32* @PANELCTL_CLK2_001, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @PANELCTL_INT1_CON_MASK, align 4
  %66 = load i32, i32* @PANELCTL_INT2_CON_MASK, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @PANELCTL_INT1_000, align 4
  %72 = load i32, i32* @PANELCTL_INT2_001, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @PANELCTL_BICTL_CON_MASK, align 4
  %77 = load i32, i32* @PANELCTL_BICTLB_CON_MASK, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @PANELCTL_BICTL_000, align 4
  %83 = load i32, i32* @PANELCTL_BICTLB_001, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @PANELCTL_EM_CLK1_CON_MASK, align 4
  %88 = load i32, i32* @PANELCTL_EM_CLK1B_CON_MASK, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @PANELCTL_EM_CLK1_110, align 4
  %94 = load i32, i32* @PANELCTL_EM_CLK1B_110, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @PANELCTL_EM_CLK2_CON_MASK, align 4
  %99 = load i32, i32* @PANELCTL_EM_CLK2B_CON_MASK, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @PANELCTL_EM_CLK2_110, align 4
  %105 = load i32, i32* @PANELCTL_EM_CLK2B_110, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @PANELCTL_EM_INT1_CON_MASK, align 4
  %110 = load i32, i32* @PANELCTL_EM_INT2_CON_MASK, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @PANELCTL_EM_INT1_000, align 4
  %116 = load i32, i32* @PANELCTL_EM_INT2_001, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %53, %48
  %121 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @s6e8aa0_dcs_write_seq(%struct.s6e8aa0* %121, i32 248, i32 %122, i32 53, i32 0, i32 0, i32 0, i32 147, i32 0, i32 60, i32 120, i32 8, i32 39, i32 125, i32 63, i32 0, i32 0, i32 0, i32 32, i32 %123, i32 8, i32 110, i32 0, i32 0, i32 0, i32 2, i32 7, i32 7, i32 35, i32 35, i32 192, i32 %124, i32 %125, i32 %126, i32 193, i32 0, i32 193, i32 %127, i32 %128, i32 %129)
  ret void
}

declare dso_local i32 @s6e8aa0_dcs_write_seq(%struct.s6e8aa0*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
