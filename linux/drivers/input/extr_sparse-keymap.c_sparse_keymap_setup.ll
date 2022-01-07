; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i64, i32, i32, %struct.key_entry*, i32, i32, i32, i32, i32 }
%struct.key_entry = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@KE_END = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@sparse_keymap_getkeycode = common dso_local global i32 0, align 4
@sparse_keymap_setkeycode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparse_keymap_setup(%struct.input_dev* %0, %struct.key_entry* %1, i32 (%struct.input_dev*, %struct.key_entry*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.key_entry*, align 8
  %7 = alloca i32 (%struct.input_dev*, %struct.key_entry*)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.key_entry*, align 8
  %10 = alloca %struct.key_entry*, align 8
  %11 = alloca %struct.key_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.key_entry* %1, %struct.key_entry** %6, align 8
  store i32 (%struct.input_dev*, %struct.key_entry*)* %2, i32 (%struct.input_dev*, %struct.key_entry*)** %7, align 8
  store i64 1, i64* %8, align 8
  %14 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  store %struct.key_entry* %14, %struct.key_entry** %9, align 8
  br label %15

15:                                               ; preds = %24, %3
  %16 = load %struct.key_entry*, %struct.key_entry** %9, align 8
  %17 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KE_END, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load %struct.key_entry*, %struct.key_entry** %9, align 8
  %26 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %25, i32 1
  store %struct.key_entry* %26, %struct.key_entry** %9, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 8
  %30 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = mul i64 %31, 16
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.key_entry* @devm_kmemdup(i32* %29, %struct.key_entry* %30, i64 %32, i32 %33)
  store %struct.key_entry* %34, %struct.key_entry** %10, align 8
  %35 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %36 = icmp ne %struct.key_entry* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %134

40:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %95, %40
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %41
  %47 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %47, i64 %49
  store %struct.key_entry* %50, %struct.key_entry** %11, align 8
  %51 = load i32 (%struct.input_dev*, %struct.key_entry*)*, i32 (%struct.input_dev*, %struct.key_entry*)** %7, align 8
  %52 = icmp ne i32 (%struct.input_dev*, %struct.key_entry*)* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i32 (%struct.input_dev*, %struct.key_entry*)*, i32 (%struct.input_dev*, %struct.key_entry*)** %7, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = load %struct.key_entry*, %struct.key_entry** %11, align 8
  %57 = call i32 %54(%struct.input_dev* %55, %struct.key_entry* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %134

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.key_entry*, %struct.key_entry** %11, align 8
  %65 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  switch i64 %66, label %94 [
    i64 130, label %67
    i64 129, label %80
    i64 128, label %80
  ]

67:                                               ; preds = %63
  %68 = load i32, i32* @EV_KEY, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  %73 = load %struct.key_entry*, %struct.key_entry** %11, align 8
  %74 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @__set_bit(i32 %75, i32 %78)
  br label %94

80:                                               ; preds = %63, %63
  %81 = load i32, i32* @EV_SW, align 4
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @__set_bit(i32 %81, i32 %84)
  %86 = load %struct.key_entry*, %struct.key_entry** %11, align 8
  %87 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @__set_bit(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %63, %80, %67
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %41

98:                                               ; preds = %41
  %99 = load i32, i32* @EV_KEY, align 4
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @test_bit(i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load i32, i32* @KEY_UNKNOWN, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @__set_bit(i32 %106, i32 %109)
  %111 = load i32, i32* @EV_MSC, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @__set_bit(i32 %111, i32 %114)
  %116 = load i32, i32* @MSC_SCAN, align 4
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @__set_bit(i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %105, %98
  %122 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 3
  store %struct.key_entry* %122, %struct.key_entry** %124, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %127 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* @sparse_keymap_getkeycode, align 4
  %129 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %130 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @sparse_keymap_setkeycode, align 4
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %121, %60, %37
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.key_entry* @devm_kmemdup(i32*, %struct.key_entry*, i64, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
