; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_format_caps.c_komeda_get_layer_fourcc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_format_caps.c_komeda_get_layer_fourcc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_format_caps_table = type { i32, %struct.komeda_format_caps* }
%struct.komeda_format_caps = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @komeda_get_layer_fourcc_list(%struct.komeda_format_caps_table* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.komeda_format_caps_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.komeda_format_caps*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.komeda_format_caps_table* %0, %struct.komeda_format_caps_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %5, align 8
  %14 = getelementptr inbounds %struct.komeda_format_caps_table, %struct.komeda_format_caps_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64* @kcalloc(i32 %15, i32 8, i32 %16)
  store i64* %17, i64** %9, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %93

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %81, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %5, align 8
  %25 = getelementptr inbounds %struct.komeda_format_caps_table, %struct.komeda_format_caps_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %22
  %29 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %5, align 8
  %30 = getelementptr inbounds %struct.komeda_format_caps_table, %struct.komeda_format_caps_table* %29, i32 0, i32 1
  %31 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %31, i64 %33
  store %struct.komeda_format_caps* %34, %struct.komeda_format_caps** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %37 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %35, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %43 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %28
  br label %81

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %65, %47
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %60 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  br label %50

68:                                               ; preds = %63, %50
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %73 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %74, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %68
  br label %81

81:                                               ; preds = %80, %46
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %22

84:                                               ; preds = %22
  %85 = load i64*, i64** %7, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64*, i64** %7, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i64*, i64** %9, align 8
  store i64* %92, i64** %4, align 8
  br label %93

93:                                               ; preds = %91, %20
  %94 = load i64*, i64** %4, align 8
  ret i64* %94
}

declare dso_local i64* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
