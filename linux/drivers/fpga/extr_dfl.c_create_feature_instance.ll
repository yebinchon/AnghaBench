; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_create_feature_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_create_feature_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_feature_devs_info = type { i32, i32 }
%struct.dfl_fpga_enum_dfl = type { i64, i64, i64 }
%struct.dfl_feature_info = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.build_feature_devs_info*, %struct.dfl_fpga_enum_dfl*, i64, i64, i64)* @create_feature_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_feature_instance(%struct.build_feature_devs_info* %0, %struct.dfl_fpga_enum_dfl* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.build_feature_devs_info*, align 8
  %8 = alloca %struct.dfl_fpga_enum_dfl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dfl_feature_info*, align 8
  store %struct.build_feature_devs_info* %0, %struct.build_feature_devs_info** %7, align 8
  store %struct.dfl_fpga_enum_dfl* %1, %struct.dfl_fpga_enum_dfl** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i64, i64* %10, align 8
  br label %24

17:                                               ; preds = %5
  %18 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %8, align 8
  %19 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @feature_size(i64 %22)
  br label %24

24:                                               ; preds = %17, %15
  %25 = phi i64 [ %16, %15 ], [ %23, %17 ]
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %11, align 8
  br label %37

30:                                               ; preds = %24
  %31 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %8, align 8
  %32 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @feature_id(i64 %35)
  br label %37

37:                                               ; preds = %30, %28
  %38 = phi i64 [ %29, %28 ], [ %36, %30 ]
  store i64 %38, i64* %11, align 8
  %39 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %8, align 8
  %40 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* %10, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %99

49:                                               ; preds = %37
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.dfl_feature_info* @kzalloc(i32 48, i32 %50)
  store %struct.dfl_feature_info* %51, %struct.dfl_feature_info** %12, align 8
  %52 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %53 = icmp ne %struct.dfl_feature_info* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %99

57:                                               ; preds = %49
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %60 = getelementptr inbounds %struct.dfl_feature_info, %struct.dfl_feature_info* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %8, align 8
  %62 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %67 = getelementptr inbounds %struct.dfl_feature_info, %struct.dfl_feature_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %70 = getelementptr inbounds %struct.dfl_feature_info, %struct.dfl_feature_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %72, %73
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %77 = getelementptr inbounds %struct.dfl_feature_info, %struct.dfl_feature_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i64 %75, i64* %78, align 8
  %79 = load i32, i32* @IORESOURCE_MEM, align 4
  %80 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %81 = getelementptr inbounds %struct.dfl_feature_info, %struct.dfl_feature_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.dfl_fpga_enum_dfl*, %struct.dfl_fpga_enum_dfl** %8, align 8
  %84 = getelementptr inbounds %struct.dfl_fpga_enum_dfl, %struct.dfl_fpga_enum_dfl* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %89 = getelementptr inbounds %struct.dfl_feature_info, %struct.dfl_feature_info* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.dfl_feature_info*, %struct.dfl_feature_info** %12, align 8
  %91 = getelementptr inbounds %struct.dfl_feature_info, %struct.dfl_feature_info* %90, i32 0, i32 0
  %92 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %7, align 8
  %93 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %92, i32 0, i32 1
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.build_feature_devs_info*, %struct.build_feature_devs_info** %7, align 8
  %96 = getelementptr inbounds %struct.build_feature_devs_info, %struct.build_feature_devs_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %57, %54, %46
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @feature_size(i64) #1

declare dso_local i64 @feature_id(i64) #1

declare dso_local %struct.dfl_feature_info* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
