; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.adnp = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"input \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"low \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"enabled \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%2u: %s %s IRQ %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*)* @adnp_gpio_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adnp_gpio_dbg_show(%struct.seq_file* %0, %struct.gpio_chip* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.adnp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %4, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = call %struct.adnp* @gpiochip_get_data(%struct.gpio_chip* %19)
  store %struct.adnp* %20, %struct.adnp** %5, align 8
  %21 = load %struct.adnp*, %struct.adnp** %5, align 8
  %22 = getelementptr inbounds %struct.adnp, %struct.adnp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %130, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %133

29:                                               ; preds = %25
  %30 = load %struct.adnp*, %struct.adnp** %5, align 8
  %31 = getelementptr inbounds %struct.adnp, %struct.adnp* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.adnp*, %struct.adnp** %5, align 8
  %34 = load %struct.adnp*, %struct.adnp** %5, align 8
  %35 = call i64 @GPIO_DDR(%struct.adnp* %34)
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @adnp_read(%struct.adnp* %33, i64 %38, i32* %10)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %134

43:                                               ; preds = %29
  %44 = load %struct.adnp*, %struct.adnp** %5, align 8
  %45 = load %struct.adnp*, %struct.adnp** %5, align 8
  %46 = call i64 @GPIO_PLR(%struct.adnp* %45)
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @adnp_read(%struct.adnp* %44, i64 %49, i32* %11)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %134

54:                                               ; preds = %43
  %55 = load %struct.adnp*, %struct.adnp** %5, align 8
  %56 = load %struct.adnp*, %struct.adnp** %5, align 8
  %57 = call i64 @GPIO_IER(%struct.adnp* %56)
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @adnp_read(%struct.adnp* %55, i64 %60, i32* %12)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %134

65:                                               ; preds = %54
  %66 = load %struct.adnp*, %struct.adnp** %5, align 8
  %67 = load %struct.adnp*, %struct.adnp** %5, align 8
  %68 = call i64 @GPIO_ISR(%struct.adnp* %67)
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = call i32 @adnp_read(%struct.adnp* %66, i64 %71, i32* %13)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %134

76:                                               ; preds = %65
  %77 = load %struct.adnp*, %struct.adnp** %5, align 8
  %78 = getelementptr inbounds %struct.adnp, %struct.adnp* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %126, %76
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %81, 8
  br i1 %82, label %83, label %129

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.adnp*, %struct.adnp** %5, align 8
  %86 = getelementptr inbounds %struct.adnp, %struct.adnp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %84, %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %88, %89
  store i32 %90, i32* %14, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @BIT(i32 %92)
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @BIT(i32 %99)
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %104

104:                                              ; preds = %103, %97
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %111

111:                                              ; preds = %110, %104
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @BIT(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %18, align 8
  br label %118

118:                                              ; preds = %117, %111
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i8*, i8** %15, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %120, i8* %121, i8* %122, i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %80

129:                                              ; preds = %80
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %25

133:                                              ; preds = %25
  br label %138

134:                                              ; preds = %75, %64, %53, %42
  %135 = load %struct.adnp*, %struct.adnp** %5, align 8
  %136 = getelementptr inbounds %struct.adnp, %struct.adnp* %135, i32 0, i32 1
  %137 = call i32 @mutex_unlock(i32* %136)
  br label %138

138:                                              ; preds = %134, %133
  ret void
}

declare dso_local %struct.adnp* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adnp_read(%struct.adnp*, i64, i32*) #1

declare dso_local i64 @GPIO_DDR(%struct.adnp*) #1

declare dso_local i64 @GPIO_PLR(%struct.adnp*) #1

declare dso_local i64 @GPIO_IER(%struct.adnp*) #1

declare dso_local i64 @GPIO_ISR(%struct.adnp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
