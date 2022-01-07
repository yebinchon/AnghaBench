; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drv260x_data = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DRV260X_RATED_VOLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to write DRV260X_RATED_VOLT register: %d\0A\00", align 1
@DRV260X_OD_CLAMP_VOLT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to write DRV260X_OD_CLAMP_VOLT register: %d\0A\00", align 1
@drv260x_lra_cal_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to write LRA calibration registers: %d\0A\00", align 1
@drv260x_erm_cal_regs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to write ERM calibration registers: %d\0A\00", align 1
@DRV260X_LIB_SEL = common dso_local global i32 0, align 4
@DRV260X_LIB_SEL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to write DRV260X_LIB_SEL register: %d\0A\00", align 1
@drv260x_lra_init_regs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to write LRA init registers: %d\0A\00", align 1
@DRV260X_GO = common dso_local global i32 0, align 4
@DRV260X_GO_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to write GO register: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to read GO register: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drv260x_data*)* @drv260x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv260x_init(%struct.drv260x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drv260x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drv260x_data* %0, %struct.drv260x_data** %3, align 8
  %6 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %7 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DRV260X_RATED_VOLT, align 4
  %10 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %11 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @regmap_write(i32 %8, i32 %9, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %18 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %184

24:                                               ; preds = %1
  %25 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %26 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DRV260X_OD_CLAMP_VOLT, align 4
  %29 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %30 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_write(i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %37 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %184

43:                                               ; preds = %24
  %44 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %45 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %105 [
    i32 128, label %47
    i32 129, label %66
  ]

47:                                               ; preds = %43
  %48 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %49 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @drv260x_lra_cal_regs, align 4
  %52 = load i32, i32* @drv260x_lra_cal_regs, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = call i32 @regmap_register_patch(i32 %50, i32 %51, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %59 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %184

65:                                               ; preds = %47
  br label %144

66:                                               ; preds = %43
  %67 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %68 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @drv260x_erm_cal_regs, align 4
  %71 = load i32, i32* @drv260x_erm_cal_regs, align 4
  %72 = call i32 @ARRAY_SIZE(i32 %71)
  %73 = call i32 @regmap_register_patch(i32 %69, i32 %70, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %78 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %184

84:                                               ; preds = %66
  %85 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %86 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DRV260X_LIB_SEL, align 4
  %89 = load i32, i32* @DRV260X_LIB_SEL_MASK, align 4
  %90 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %91 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %84
  %97 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %98 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %184

104:                                              ; preds = %84
  br label %144

105:                                              ; preds = %43
  %106 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %107 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @drv260x_lra_init_regs, align 4
  %110 = load i32, i32* @drv260x_lra_init_regs, align 4
  %111 = call i32 @ARRAY_SIZE(i32 %110)
  %112 = call i32 @regmap_register_patch(i32 %108, i32 %109, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %117 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %184

123:                                              ; preds = %105
  %124 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %125 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DRV260X_LIB_SEL, align 4
  %128 = load i32, i32* @DRV260X_LIB_SEL_MASK, align 4
  %129 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %130 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %128, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %123
  %136 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %137 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %184

143:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %184

144:                                              ; preds = %104, %65
  %145 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %146 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DRV260X_GO, align 4
  %149 = load i32, i32* @DRV260X_GO_BIT, align 4
  %150 = call i32 @regmap_write(i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %144
  %154 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %155 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %184

161:                                              ; preds = %144
  br label %162

162:                                              ; preds = %179, %161
  %163 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %164 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @DRV260X_GO, align 4
  %167 = call i32 @regmap_read(i32 %165, i32 %166, i32* %5)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %172 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %171, i32 0, i32 3
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @dev_err(i32* %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* %2, align 4
  br label %184

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @DRV260X_GO_BIT, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %162, label %183

183:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %170, %153, %143, %135, %115, %96, %76, %57, %35, %16
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
