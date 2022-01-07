; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_sram_mgr.c_cc_set_sram_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_sram_mgr.c_cc_set_sram_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32 }

@BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_set_sram_desc(i32* %0, i64 %1, i32 %2, %struct.cc_hw_desc* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cc_hw_desc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cc_hw_desc* %3, %struct.cc_hw_desc** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %51, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %20, i64 %22
  %24 = call i32 @hw_desc_init(%struct.cc_hw_desc* %23)
  %25 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %25, i64 %27
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_din_const(%struct.cc_hw_desc* %28, i32 %33, i32 4)
  %35 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %35, i64 %37
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = add i64 %39, %42
  %44 = call i32 @set_dout_sram(%struct.cc_hw_desc* %38, i64 %43, i32 4)
  %45 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %45, i64 %47
  %49 = load i32, i32* @BYPASS, align 4
  %50 = call i32 @set_flow_mode(%struct.cc_hw_desc* %48, i32 %49)
  br label %51

51:                                               ; preds = %19
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  ret void
}

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_sram(%struct.cc_hw_desc*, i64, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
