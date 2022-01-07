; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_do_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_do_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i32 }

@PSC_SMBSTAT = common dso_local global i32 0, align 4
@PSC_SMBEVNT = common dso_local global i32 0, align 4
@PSC_SMBEVNT_ALLCLR = common dso_local global i32 0, align 4
@PSC_SMBSTAT_TE = common dso_local global i64 0, align 8
@PSC_SMBSTAT_RE = common dso_local global i64 0, align 8
@PSC_SMBPCR = common dso_local global i32 0, align 4
@PSC_SMBPCR_DC = common dso_local global i32 0, align 4
@PSC_SMBTXRX_STP = common dso_local global i32 0, align 4
@PSC_SMBTXRX = common dso_local global i32 0, align 4
@PSC_SMBPCR_MS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*, i32, i32, i32)* @do_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_address(%struct.i2c_au1550_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_au1550_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %12 = load i32, i32* @PSC_SMBSTAT, align 4
  %13 = call i32 @RD(%struct.i2c_au1550_data* %11, i32 %12)
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %10, align 8
  %15 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %16 = load i32, i32* @PSC_SMBEVNT, align 4
  %17 = load i32, i32* @PSC_SMBEVNT_ALLCLR, align 4
  %18 = call i32 @WR(%struct.i2c_au1550_data* %15, i32 %16, i32 %17)
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @PSC_SMBSTAT_TE, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @PSC_SMBSTAT_RE, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23, %4
  %29 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %30 = load i32, i32* @PSC_SMBPCR, align 4
  %31 = load i32, i32* @PSC_SMBPCR_DC, align 4
  %32 = call i32 @WR(%struct.i2c_au1550_data* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %40, %28
  %34 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %35 = load i32, i32* @PSC_SMBPCR, align 4
  %36 = call i32 @RD(%struct.i2c_au1550_data* %34, i32 %35)
  %37 = load i32, i32* @PSC_SMBPCR_DC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 (...) @cpu_relax()
  br label %33

42:                                               ; preds = %33
  %43 = call i32 @udelay(i32 50)
  br label %44

44:                                               ; preds = %42, %23
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @PSC_SMBTXRX_STP, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %61 = load i32, i32* @PSC_SMBTXRX, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @WR(%struct.i2c_au1550_data* %60, i32 %61, i32 %62)
  %64 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %65 = load i32, i32* @PSC_SMBPCR, align 4
  %66 = load i32, i32* @PSC_SMBPCR_MS, align 4
  %67 = call i32 @WR(%struct.i2c_au1550_data* %64, i32 %65, i32 %66)
  %68 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %69 = call i64 @wait_ack(%struct.i2c_au1550_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %83

74:                                               ; preds = %59
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %79 = call i32 @wait_master_done(%struct.i2c_au1550_data* %78)
  br label %81

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %71
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @RD(%struct.i2c_au1550_data*, i32) #1

declare dso_local i32 @WR(%struct.i2c_au1550_data*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @wait_ack(%struct.i2c_au1550_data*) #1

declare dso_local i32 @wait_master_done(%struct.i2c_au1550_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
