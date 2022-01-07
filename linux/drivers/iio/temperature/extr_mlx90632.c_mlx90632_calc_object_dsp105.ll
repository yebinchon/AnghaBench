; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_object_dsp105.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_object_dsp105.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx90632_data = type { i32, i32 }

@MLX90632_EE_Ea = common dso_local global i32 0, align 4
@MLX90632_EE_Eb = common dso_local global i32 0, align 4
@MLX90632_EE_Fa = common dso_local global i32 0, align 4
@MLX90632_EE_Fb = common dso_local global i32 0, align 4
@MLX90632_EE_Ga = common dso_local global i32 0, align 4
@MLX90632_EE_Ha = common dso_local global i32 0, align 4
@MLX90632_EE_Hb = common dso_local global i32 0, align 4
@MLX90632_EE_Gb = common dso_local global i32 0, align 4
@MLX90632_EE_Ka = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx90632_data*, i32*)* @mlx90632_calc_object_dsp105 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90632_calc_object_dsp105(%struct.mlx90632_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx90632_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlx90632_data* %0, %struct.mlx90632_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %24 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MLX90632_EE_Ea, align 4
  %27 = call i64 @mlx90632_read_ee_register(i32 %25, i32 %26, i64* %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %162

33:                                               ; preds = %2
  %34 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %35 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MLX90632_EE_Eb, align 4
  %38 = call i64 @mlx90632_read_ee_register(i32 %36, i32 %37, i64* %8)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %162

44:                                               ; preds = %33
  %45 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %46 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MLX90632_EE_Fa, align 4
  %49 = call i64 @mlx90632_read_ee_register(i32 %47, i32 %48, i64* %9)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %162

55:                                               ; preds = %44
  %56 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %57 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MLX90632_EE_Fb, align 4
  %60 = call i64 @mlx90632_read_ee_register(i32 %58, i32 %59, i64* %10)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %162

66:                                               ; preds = %55
  %67 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %68 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MLX90632_EE_Ga, align 4
  %71 = call i64 @mlx90632_read_ee_register(i32 %69, i32 %70, i64* %11)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i64, i64* %6, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %162

77:                                               ; preds = %66
  %78 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %79 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MLX90632_EE_Ha, align 4
  %82 = call i64 @regmap_read(i32 %80, i32 %81, i32* %12)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %162

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %13, align 8
  %91 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %92 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MLX90632_EE_Hb, align 4
  %95 = call i64 @regmap_read(i32 %93, i32 %94, i32* %12)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i64, i64* %6, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %3, align 4
  br label %162

101:                                              ; preds = %88
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %14, align 8
  %104 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %105 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MLX90632_EE_Gb, align 4
  %108 = call i64 @regmap_read(i32 %106, i32 %107, i32* %12)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i64, i64* %6, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %162

114:                                              ; preds = %101
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %15, align 8
  %117 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %118 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MLX90632_EE_Ka, align 4
  %121 = call i64 @regmap_read(i32 %119, i32 %120, i32* %12)
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i64, i64* %6, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %3, align 4
  br label %162

127:                                              ; preds = %114
  %128 = load i32, i32* %12, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %16, align 8
  %130 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %131 = call i64 @mlx90632_read_all_channel(%struct.mlx90632_data* %130, i64* %17, i64* %18, i64* %19, i64* %20)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i64, i64* %6, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %3, align 4
  br label %162

137:                                              ; preds = %127
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* %18, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @mlx90632_preprocess_temp_amb(i64 %138, i64 %139, i64 %140)
  store i32 %141, i32* %22, align 4
  %142 = load i64, i64* %19, align 8
  %143 = load i64, i64* %20, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %16, align 8
  %147 = call i32 @mlx90632_preprocess_temp_obj(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load %struct.mlx90632_data*, %struct.mlx90632_data** %4, align 8
  %158 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mlx90632_calc_temp_object(i32 %148, i32 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i32 %159)
  %161 = load i32*, i32** %5, align 8
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %137, %134, %124, %111, %98, %85, %74, %63, %52, %41, %30
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @mlx90632_read_ee_register(i32, i32, i64*) #1

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @mlx90632_read_all_channel(%struct.mlx90632_data*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @mlx90632_preprocess_temp_amb(i64, i64, i64) #1

declare dso_local i32 @mlx90632_preprocess_temp_obj(i64, i64, i64, i64, i64) #1

declare dso_local i32 @mlx90632_calc_temp_object(i32, i32, i64, i64, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
