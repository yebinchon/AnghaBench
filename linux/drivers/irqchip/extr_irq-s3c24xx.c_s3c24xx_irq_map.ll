; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c24xx_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c24xx_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.s3c_irq_intc* }
%struct.s3c_irq_intc = type { i32, %struct.s3c_irq_data*, i32, %struct.s3c_irq_intc* }
%struct.s3c_irq_data = type { i64, i32, i32, i64, %struct.s3c_irq_intc*, %struct.s3c_irq_intc* }

@s3c_irqext_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@s3c_irq_eint0t4 = common dso_local global i32 0, align 4
@S3C2416_SRCPND2 = common dso_local global i32 0, align 4
@s3c_irq_level_chip = common dso_local global i32 0, align 4
@s3c_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"irq-s3c24xx: unsupported irqtype %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"irq-s3c24xx: parent irq %lu is out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"irq-s3c24xx: could not find mapping for parent irq %lu\0A\00", align 1
@s3c_irq_demux = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @s3c24xx_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_irq_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.s3c_irq_intc*, align 8
  %9 = alloca %struct.s3c_irq_data*, align 8
  %10 = alloca %struct.s3c_irq_intc*, align 8
  %11 = alloca %struct.s3c_irq_data*, align 8
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 0
  %15 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %14, align 8
  store %struct.s3c_irq_intc* %15, %struct.s3c_irq_intc** %8, align 8
  %16 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %8, align 8
  %17 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %16, i32 0, i32 1
  %18 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %18, i64 %19
  store %struct.s3c_irq_data* %20, %struct.s3c_irq_data** %9, align 8
  %21 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %8, align 8
  %22 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %23 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %22, i32 0, i32 5
  store %struct.s3c_irq_intc* %21, %struct.s3c_irq_intc** %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %26 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %8, align 8
  %28 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %27, i32 0, i32 3
  %29 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %28, align 8
  store %struct.s3c_irq_intc* %29, %struct.s3c_irq_intc** %10, align 8
  %30 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %31 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %82 [
    i32 128, label %33
    i32 130, label %34
    i32 131, label %52
    i32 129, label %70
  ]

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

34:                                               ; preds = %3
  %35 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %10, align 8
  %36 = icmp ne %struct.s3c_irq_intc* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = call i32 (...) @soc_is_s3c2412()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = icmp uge i64 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @handle_edge_irq, align 4
  %46 = call i32 @irq_set_chip_and_handler(i32 %44, i32* @s3c_irqext_chip, i32 %45)
  br label %51

47:                                               ; preds = %40, %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @handle_edge_irq, align 4
  %50 = call i32 @irq_set_chip_and_handler(i32 %48, i32* @s3c_irq_eint0t4, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %89

52:                                               ; preds = %3
  %53 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %10, align 8
  %54 = icmp ne %struct.s3c_irq_intc* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %8, align 8
  %57 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @S3C2416_SRCPND2, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @handle_edge_irq, align 4
  %64 = call i32 @irq_set_chip_and_handler(i32 %62, i32* @s3c_irq_level_chip, i32 %63)
  br label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @handle_edge_irq, align 4
  %68 = call i32 @irq_set_chip_and_handler(i32 %66, i32* @s3c_irq_chip, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  br label %89

70:                                               ; preds = %3
  %71 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %10, align 8
  %72 = icmp ne %struct.s3c_irq_intc* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @handle_level_irq, align 4
  %76 = call i32 @irq_set_chip_and_handler(i32 %74, i32* @s3c_irq_level_chip, i32 %75)
  br label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @handle_level_irq, align 4
  %80 = call i32 @irq_set_chip_and_handler(i32 %78, i32* @s3c_irq_chip, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %89

82:                                               ; preds = %3
  %83 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %84 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %152

89:                                               ; preds = %81, %69, %51
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %92 = call i32 @irq_set_chip_data(i32 %90, %struct.s3c_irq_data* %91)
  %93 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %10, align 8
  %94 = icmp ne %struct.s3c_irq_intc* %93, null
  br i1 %94, label %95, label %151

95:                                               ; preds = %89
  %96 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %97 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 128
  br i1 %99, label %100, label %151

100:                                              ; preds = %95
  %101 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %102 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 31
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %107 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %152

112:                                              ; preds = %100
  %113 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %10, align 8
  %114 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %113, i32 0, i32 1
  %115 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %114, align 8
  %116 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %117 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %115, i64 %119
  store %struct.s3c_irq_data* %120, %struct.s3c_irq_data** %11, align 8
  %121 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %8, align 8
  %122 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %11, align 8
  %123 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %122, i32 0, i32 4
  store %struct.s3c_irq_intc* %121, %struct.s3c_irq_intc** %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = shl i64 1, %124
  %126 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %11, align 8
  %127 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = or i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %10, align 8
  %131 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %134 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = call i32 @irq_find_mapping(i32 %132, i64 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %112
  %141 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %9, align 8
  %142 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %152

147:                                              ; preds = %112
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @s3c_irq_demux, align 4
  %150 = call i32 @irq_set_chained_handler(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %95, %89
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %140, %105, %82, %33
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @soc_is_s3c2412(...) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.s3c_irq_data*) #1

declare dso_local i32 @irq_find_mapping(i32, i64) #1

declare dso_local i32 @irq_set_chained_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
