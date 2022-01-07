; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i8, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ICSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"i2c_isr 0x%02x 0x%02x %s %d %d!\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ICIC = common dso_local global i32 0, align 4
@ICIC_TDMAE = common dso_local global i32 0, align 4
@ICSR_AL = common dso_local global i8 0, align 1
@ICSR_TACK = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@ICIC_RDMAE = common dso_local global i32 0, align 4
@ICSR_WAIT = common dso_local global i8 0, align 1
@SW_DONE = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_mobile_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_mobile_i2c_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sh_mobile_i2c_data*
  store %struct.sh_mobile_i2c_data* %9, %struct.sh_mobile_i2c_data** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %11 = load i32, i32* @ICSR, align 4
  %12 = call zeroext i8 @iic_rd(%struct.sh_mobile_i2c_data* %10, i32 %11)
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, %14
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %16, align 8
  %21 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %22 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i8, i8* %6, align 1
  %25 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %26 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %29 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I2C_M_RD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %38 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %39 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %42 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %24, i8 zeroext %27, i8* %37, i32 %40, i32 %45)
  %47 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %48 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMA_TO_DEVICE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %2
  %53 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %54 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %59 = load i32, i32* @ICIC, align 4
  %60 = load i32, i32* @ICIC_TDMAE, align 4
  %61 = call i32 @iic_set_clr(%struct.sh_mobile_i2c_data* %58, i32 %59, i32 %60, i32 0)
  br label %103

62:                                               ; preds = %52, %2
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @ICSR_AL, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @ICSR_TACK, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = and i32 %64, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %62
  %73 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %74 = load i32, i32* @ICSR, align 4
  %75 = load i8, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @ICSR_AL, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @ICSR_TACK, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %78, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %76, %82
  %84 = trunc i32 %83 to i8
  %85 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %73, i32 %74, i8 zeroext %84)
  br label %102

86:                                               ; preds = %62
  %87 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %88 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @I2C_M_RD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %97 = call i32 @sh_mobile_i2c_isr_rx(%struct.sh_mobile_i2c_data* %96)
  store i32 %97, i32* %7, align 4
  br label %101

98:                                               ; preds = %86
  %99 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %100 = call i32 @sh_mobile_i2c_isr_tx(%struct.sh_mobile_i2c_data* %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %72
  br label %103

103:                                              ; preds = %102, %57
  %104 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %105 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %111 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %116 = load i32, i32* @ICIC, align 4
  %117 = load i32, i32* @ICIC_RDMAE, align 4
  %118 = call i32 @iic_set_clr(%struct.sh_mobile_i2c_data* %115, i32 %116, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %114, %109, %103
  %120 = load i8, i8* %6, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @ICSR_WAIT, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %119
  %127 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %128 = load i32, i32* @ICSR, align 4
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @ICSR_WAIT, align 1
  %132 = zext i8 %131 to i32
  %133 = xor i32 %132, -1
  %134 = and i32 %130, %133
  %135 = trunc i32 %134 to i8
  %136 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %127, i32 %128, i8 zeroext %135)
  br label %137

137:                                              ; preds = %126, %119
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i8, i8* @SW_DONE, align 1
  %142 = zext i8 %141 to i32
  %143 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %144 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %143, i32 0, i32 0
  %145 = load i8, i8* %144, align 8
  %146 = zext i8 %145 to i32
  %147 = or i32 %146, %142
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %144, align 8
  %149 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %150 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %149, i32 0, i32 3
  %151 = call i32 @wake_up(i32* %150)
  br label %152

152:                                              ; preds = %140, %137
  %153 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %154 = load i32, i32* @ICSR, align 4
  %155 = call zeroext i8 @iic_rd(%struct.sh_mobile_i2c_data* %153, i32 %154)
  %156 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %156
}

declare dso_local zeroext i8 @iic_rd(%struct.sh_mobile_i2c_data*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @iic_set_clr(%struct.sh_mobile_i2c_data*, i32, i32, i32) #1

declare dso_local i32 @iic_wr(%struct.sh_mobile_i2c_data*, i32, i8 zeroext) #1

declare dso_local i32 @sh_mobile_i2c_isr_rx(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @sh_mobile_i2c_isr_tx(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
