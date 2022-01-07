; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_i2c_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_i2c_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"op %d\0A\00", align 1
@ICCR = common dso_local global i32 0, align 4
@ICCR_ICE = common dso_local global i32 0, align 4
@ICCR_TRS = common dso_local global i32 0, align 4
@ICCR_BBSY = common dso_local global i32 0, align 4
@ICIC = common dso_local global i32 0, align 4
@ICIC_WAITE = common dso_local global i32 0, align 4
@ICIC_ALE = common dso_local global i32 0, align 4
@ICIC_TACKE = common dso_local global i32 0, align 4
@ICDR = common dso_local global i32 0, align 4
@ICCR_SCP = common dso_local global i32 0, align 4
@ICIC_DTEE = common dso_local global i32 0, align 4
@ICCR_RACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"op %d, data out 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.sh_mobile_i2c_data*, i32)* @i2c_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_mobile_i2c_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %7 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %8 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %13 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %12, i32 0, i32 2
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %124 [
    i32 132, label %17
    i32 130, label %26
    i32 131, label %42
    i32 129, label %56
    i32 128, label %76
    i32 135, label %83
    i32 134, label %87
    i32 133, label %104
  ]

17:                                               ; preds = %2
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %19 = load i32, i32* @ICCR, align 4
  %20 = load i32, i32* @ICCR_ICE, align 4
  %21 = load i32, i32* @ICCR_TRS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ICCR_BBSY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %18, i32 %19, i32 %24)
  br label %124

26:                                               ; preds = %2
  %27 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %28 = load i32, i32* @ICIC, align 4
  %29 = load i32, i32* @ICIC_WAITE, align 4
  %30 = load i32, i32* @ICIC_ALE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ICIC_TACKE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %27, i32 %28, i32 %33)
  %35 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %36 = load i32, i32* @ICDR, align 4
  %37 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @i2c_8bit_addr_from_msg(%struct.TYPE_2__* %39)
  %41 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %35, i32 %36, i32 %40)
  br label %124

42:                                               ; preds = %2
  %43 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %44 = load i32, i32* @ICDR, align 4
  %45 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %46 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %51 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %43, i32 %44, i32 %54)
  br label %124

56:                                               ; preds = %2
  %57 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %58 = load i32, i32* @ICCR, align 4
  %59 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %60 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @ICCR_ICE, align 4
  %65 = load i32, i32* @ICCR_TRS, align 4
  %66 = or i32 %64, %65
  br label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @ICCR_ICE, align 4
  %69 = load i32, i32* @ICCR_TRS, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ICCR_BBSY, align 4
  %72 = or i32 %70, %71
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i32 [ %66, %63 ], [ %72, %67 ]
  %75 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %57, i32 %58, i32 %74)
  br label %124

76:                                               ; preds = %2
  %77 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %78 = load i32, i32* @ICCR, align 4
  %79 = load i32, i32* @ICCR_ICE, align 4
  %80 = load i32, i32* @ICCR_SCP, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %77, i32 %78, i32 %81)
  br label %124

83:                                               ; preds = %2
  %84 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %85 = load i32, i32* @ICDR, align 4
  %86 = call zeroext i8 @iic_rd(%struct.sh_mobile_i2c_data* %84, i32 %85)
  store i8 %86, i8* %5, align 1
  br label %124

87:                                               ; preds = %2
  %88 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %89 = load i32, i32* @ICIC, align 4
  %90 = load i32, i32* @ICIC_DTEE, align 4
  %91 = load i32, i32* @ICIC_WAITE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ICIC_ALE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @ICIC_TACKE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %88, i32 %89, i32 %96)
  %98 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %99 = load i32, i32* @ICCR, align 4
  %100 = load i32, i32* @ICCR_ICE, align 4
  %101 = load i32, i32* @ICCR_RACK, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %98, i32 %99, i32 %102)
  br label %124

104:                                              ; preds = %2
  %105 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %106 = load i32, i32* @ICIC, align 4
  %107 = load i32, i32* @ICIC_DTEE, align 4
  %108 = load i32, i32* @ICIC_WAITE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @ICIC_ALE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ICIC_TACKE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %105, i32 %106, i32 %113)
  %115 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %116 = load i32, i32* @ICDR, align 4
  %117 = call zeroext i8 @iic_rd(%struct.sh_mobile_i2c_data* %115, i32 %116)
  store i8 %117, i8* %5, align 1
  %118 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %119 = load i32, i32* @ICCR, align 4
  %120 = load i32, i32* @ICCR_ICE, align 4
  %121 = load i32, i32* @ICCR_RACK, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %118, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %2, %104, %87, %83, %76, %73, %42, %26, %17
  %125 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %126 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %125, i32 0, i32 2
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %130 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i8, i8* %5, align 1
  %134 = zext i8 %133 to i32
  %135 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %134)
  %136 = load i8, i8* %5, align 1
  ret i8 %136
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iic_wr(%struct.sh_mobile_i2c_data*, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.TYPE_2__*) #1

declare dso_local zeroext i8 @iic_rd(%struct.sh_mobile_i2c_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
