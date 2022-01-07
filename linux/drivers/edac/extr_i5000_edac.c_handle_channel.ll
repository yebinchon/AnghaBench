; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_handle_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_handle_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i5000_pvt = type { i32 }
%struct.i5000_dimm_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i5000_pvt*, i32, i32, %struct.i5000_dimm_info*)* @handle_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_channel(%struct.i5000_pvt* %0, i32 %1, i32 %2, %struct.i5000_dimm_info* %3) #0 {
  %5 = alloca %struct.i5000_pvt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i5000_dimm_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i5000_pvt* %0, %struct.i5000_pvt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i5000_dimm_info* %3, %struct.i5000_dimm_info** %8, align 8
  %12 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @determine_mtr(%struct.i5000_pvt* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @MTR_DIMMS_PRESENT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %4
  %20 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @determine_amb_present_reg(%struct.i5000_pvt* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @MTR_DIMM_RANK(i32 %26)
  %28 = load %struct.i5000_dimm_info*, %struct.i5000_dimm_info** %8, align 8
  %29 = getelementptr inbounds %struct.i5000_dimm_info, %struct.i5000_dimm_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @MTR_DRAM_BANKS_ADDR_BITS(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @MTR_DIMM_ROWS_ADDR_BITS(i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @MTR_DIMM_COLS_ADDR_BITS(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load %struct.i5000_dimm_info*, %struct.i5000_dimm_info** %8, align 8
  %45 = getelementptr inbounds %struct.i5000_dimm_info, %struct.i5000_dimm_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %25
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 6
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 20
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 3
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.i5000_dimm_info*, %struct.i5000_dimm_info** %8, align 8
  %61 = getelementptr inbounds %struct.i5000_dimm_info, %struct.i5000_dimm_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %51, %19
  br label %63

63:                                               ; preds = %62, %4
  ret void
}

declare dso_local i32 @determine_mtr(%struct.i5000_pvt*, i32, i32) #1

declare dso_local i64 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local i32 @determine_amb_present_reg(%struct.i5000_pvt*, i32) #1

declare dso_local i32 @MTR_DIMM_RANK(i32) #1

declare dso_local i32 @MTR_DRAM_BANKS_ADDR_BITS(i32) #1

declare dso_local i64 @MTR_DIMM_ROWS_ADDR_BITS(i32) #1

declare dso_local i64 @MTR_DIMM_COLS_ADDR_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
