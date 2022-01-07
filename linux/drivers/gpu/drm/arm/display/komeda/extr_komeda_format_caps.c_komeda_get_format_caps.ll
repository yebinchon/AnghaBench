; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_format_caps.c_komeda_get_format_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_format_caps.c_komeda_get_format_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_format_caps = type { i64, i64, i32 }
%struct.komeda_format_caps_table = type { i32, %struct.komeda_format_caps* }

@AFBC_FORMAT_MOD_BLOCK_SIZE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.komeda_format_caps* @komeda_get_format_caps(%struct.komeda_format_caps_table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.komeda_format_caps*, align 8
  %5 = alloca %struct.komeda_format_caps_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.komeda_format_caps*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.komeda_format_caps_table* %0, %struct.komeda_format_caps_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @AFBC_FORMAT_MOD_BLOCK_SIZE_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @AFBC_FORMAT_MOD_BLOCK_SIZE_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %65, %3
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %5, align 8
  %22 = getelementptr inbounds %struct.komeda_format_caps_table, %struct.komeda_format_caps_table* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %5, align 8
  %27 = getelementptr inbounds %struct.komeda_format_caps_table, %struct.komeda_format_caps_table* %26, i32 0, i32 1
  %28 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %28, i64 %30
  store %struct.komeda_format_caps* %31, %struct.komeda_format_caps** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %34 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %65

38:                                               ; preds = %25
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %43 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  store %struct.komeda_format_caps* %47, %struct.komeda_format_caps** %4, align 8
  br label %69

48:                                               ; preds = %41, %38
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %51 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @has_bits(i64 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  %58 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @has_bit(i64 %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %8, align 8
  store %struct.komeda_format_caps* %63, %struct.komeda_format_caps** %4, align 8
  br label %69

64:                                               ; preds = %55, %48
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %19

68:                                               ; preds = %19
  store %struct.komeda_format_caps* null, %struct.komeda_format_caps** %4, align 8
  br label %69

69:                                               ; preds = %68, %62, %46
  %70 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %4, align 8
  ret %struct.komeda_format_caps* %70
}

declare dso_local i64 @has_bits(i64, i32) #1

declare dso_local i64 @has_bit(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
