; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_au1550_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_au1550_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i32 }

@PSC_CTRL = common dso_local global i32 0, align 4
@PSC_CTRL_DISABLE = common dso_local global i64 0, align 8
@PSC_SEL = common dso_local global i32 0, align 4
@PSC_SEL_PS_SMBUSMODE = common dso_local global i64 0, align 8
@PSC_SMBCFG = common dso_local global i32 0, align 4
@PSC_CTRL_ENABLE = common dso_local global i64 0, align 8
@PSC_SMBSTAT = common dso_local global i32 0, align 4
@PSC_SMBSTAT_SR = common dso_local global i32 0, align 4
@PSC_SMBCFG_RT_FIFO8 = common dso_local global i64 0, align 8
@PSC_SMBCFG_TT_FIFO8 = common dso_local global i64 0, align 8
@PSC_SMBCFG_DD_DISABLE = common dso_local global i64 0, align 8
@PSC_SMBCFG_DIV8 = common dso_local global i32 0, align 4
@PSC_SMBMSK = common dso_local global i32 0, align 4
@PSC_SMBMSK_ALLMASK = common dso_local global i64 0, align 8
@PSC_SMBTMR = common dso_local global i32 0, align 4
@PSC_SMBCFG_DE_ENABLE = common dso_local global i64 0, align 8
@PSC_CTRL_SUSPEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_au1550_data*)* @i2c_au1550_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_au1550_setup(%struct.i2c_au1550_data* %0) #0 {
  %2 = alloca %struct.i2c_au1550_data*, align 8
  %3 = alloca i64, align 8
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %2, align 8
  %4 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %5 = load i32, i32* @PSC_CTRL, align 4
  %6 = load i64, i64* @PSC_CTRL_DISABLE, align 8
  %7 = call i32 @WR(%struct.i2c_au1550_data* %4, i32 %5, i64 %6)
  %8 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %9 = load i32, i32* @PSC_SEL, align 4
  %10 = load i64, i64* @PSC_SEL_PS_SMBUSMODE, align 8
  %11 = call i32 @WR(%struct.i2c_au1550_data* %8, i32 %9, i64 %10)
  %12 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %13 = load i32, i32* @PSC_SMBCFG, align 4
  %14 = call i32 @WR(%struct.i2c_au1550_data* %12, i32 %13, i64 0)
  %15 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %16 = load i32, i32* @PSC_CTRL, align 4
  %17 = load i64, i64* @PSC_CTRL_ENABLE, align 8
  %18 = call i32 @WR(%struct.i2c_au1550_data* %15, i32 %16, i64 %17)
  br label %19

19:                                               ; preds = %26, %1
  %20 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %21 = load i32, i32* @PSC_SMBSTAT, align 4
  %22 = call i32 @RD(%struct.i2c_au1550_data* %20, i32 %21)
  %23 = load i32, i32* @PSC_SMBSTAT_SR, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (...) @cpu_relax()
  br label %19

28:                                               ; preds = %19
  %29 = load i64, i64* @PSC_SMBCFG_RT_FIFO8, align 8
  %30 = load i64, i64* @PSC_SMBCFG_TT_FIFO8, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @PSC_SMBCFG_DD_DISABLE, align 8
  %33 = or i64 %31, %32
  store i64 %33, i64* %3, align 8
  %34 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %35 = load i32, i32* @PSC_SMBCFG, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @WR(%struct.i2c_au1550_data* %34, i32 %35, i64 %36)
  %38 = load i32, i32* @PSC_SMBCFG_DIV8, align 4
  %39 = call i64 @PSC_SMBCFG_SET_DIV(i32 %38)
  %40 = load i64, i64* %3, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %3, align 8
  %42 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %43 = load i32, i32* @PSC_SMBCFG, align 4
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @WR(%struct.i2c_au1550_data* %42, i32 %43, i64 %44)
  %46 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %47 = load i32, i32* @PSC_SMBMSK, align 4
  %48 = load i64, i64* @PSC_SMBMSK_ALLMASK, align 8
  %49 = call i32 @WR(%struct.i2c_au1550_data* %46, i32 %47, i64 %48)
  %50 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %51 = load i32, i32* @PSC_SMBTMR, align 4
  %52 = call i64 @PSC_SMBTMR_SET_TH(i32 0)
  %53 = call i64 @PSC_SMBTMR_SET_PS(i32 20)
  %54 = or i64 %52, %53
  %55 = call i64 @PSC_SMBTMR_SET_PU(i32 20)
  %56 = or i64 %54, %55
  %57 = call i64 @PSC_SMBTMR_SET_SH(i32 20)
  %58 = or i64 %56, %57
  %59 = call i64 @PSC_SMBTMR_SET_SU(i32 20)
  %60 = or i64 %58, %59
  %61 = call i64 @PSC_SMBTMR_SET_CL(i32 20)
  %62 = or i64 %60, %61
  %63 = call i64 @PSC_SMBTMR_SET_CH(i32 20)
  %64 = or i64 %62, %63
  %65 = call i32 @WR(%struct.i2c_au1550_data* %50, i32 %51, i64 %64)
  %66 = load i64, i64* @PSC_SMBCFG_DE_ENABLE, align 8
  %67 = load i64, i64* %3, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %3, align 8
  %69 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %70 = load i32, i32* @PSC_SMBCFG, align 4
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @WR(%struct.i2c_au1550_data* %69, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %80, %28
  %74 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %75 = load i32, i32* @PSC_SMBSTAT, align 4
  %76 = call i32 @RD(%struct.i2c_au1550_data* %74, i32 %75)
  %77 = load i32, i32* @PSC_SMBSTAT_SR, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 (...) @cpu_relax()
  br label %73

82:                                               ; preds = %73
  %83 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %84 = load i32, i32* @PSC_CTRL, align 4
  %85 = load i64, i64* @PSC_CTRL_SUSPEND, align 8
  %86 = call i32 @WR(%struct.i2c_au1550_data* %83, i32 %84, i64 %85)
  ret void
}

declare dso_local i32 @WR(%struct.i2c_au1550_data*, i32, i64) #1

declare dso_local i32 @RD(%struct.i2c_au1550_data*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @PSC_SMBCFG_SET_DIV(i32) #1

declare dso_local i64 @PSC_SMBTMR_SET_TH(i32) #1

declare dso_local i64 @PSC_SMBTMR_SET_PS(i32) #1

declare dso_local i64 @PSC_SMBTMR_SET_PU(i32) #1

declare dso_local i64 @PSC_SMBTMR_SET_SH(i32) #1

declare dso_local i64 @PSC_SMBTMR_SET_SU(i32) #1

declare dso_local i64 @PSC_SMBTMR_SET_CL(i32) #1

declare dso_local i64 @PSC_SMBTMR_SET_CH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
