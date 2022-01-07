; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_write_byte_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_write_byte_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.ddc = type { i32 }

@SDA = common dso_local global i32 0, align 4
@SCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_context*, %struct.ddc*, i32, i32)* @write_byte_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_byte_sw(%struct.dc_context* %0, %struct.ddc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.ddc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %6, align 8
  store %struct.ddc* %1, %struct.ddc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 7, i32* %10, align 4
  br label %12

12:                                               ; preds = %39, %4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @udelay(i32 %13)
  %15 = load %struct.ddc*, %struct.ddc** %7, align 8
  %16 = load i32, i32* @SDA, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = ashr i32 %17, %18
  %20 = and i32 %19, 1
  %21 = call i32 @write_bit_to_ddc(%struct.ddc* %15, i32 %16, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @udelay(i32 %22)
  %24 = load %struct.ddc*, %struct.ddc** %7, align 8
  %25 = load i32, i32* @SCL, align 4
  %26 = call i32 @write_bit_to_ddc(%struct.ddc* %24, i32 %25, i32 1)
  %27 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %28 = load %struct.ddc*, %struct.ddc** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @wait_for_scl_high_sw(%struct.dc_context* %27, %struct.ddc* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %76

33:                                               ; preds = %12
  %34 = load %struct.ddc*, %struct.ddc** %7, align 8
  %35 = load i32, i32* @SCL, align 4
  %36 = call i32 @write_bit_to_ddc(%struct.ddc* %34, i32 %35, i32 0)
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %12, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @udelay(i32 %43)
  %45 = load %struct.ddc*, %struct.ddc** %7, align 8
  %46 = load i32, i32* @SDA, align 4
  %47 = call i32 @write_bit_to_ddc(%struct.ddc* %45, i32 %46, i32 1)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @udelay(i32 %48)
  %50 = load %struct.ddc*, %struct.ddc** %7, align 8
  %51 = load i32, i32* @SCL, align 4
  %52 = call i32 @write_bit_to_ddc(%struct.ddc* %50, i32 %51, i32 1)
  %53 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %54 = load %struct.ddc*, %struct.ddc** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @wait_for_scl_high_sw(%struct.dc_context* %53, %struct.ddc* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %76

59:                                               ; preds = %42
  %60 = load %struct.ddc*, %struct.ddc** %7, align 8
  %61 = load i32, i32* @SDA, align 4
  %62 = call i32 @read_bit_from_ddc(%struct.ddc* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 1
  %68 = call i32 @udelay(i32 %67)
  %69 = load %struct.ddc*, %struct.ddc** %7, align 8
  %70 = load i32, i32* @SCL, align 4
  %71 = call i32 @write_bit_to_ddc(%struct.ddc* %69, i32 %70, i32 0)
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %72, 1
  %74 = call i32 @udelay(i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %59, %58, %32
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @write_bit_to_ddc(%struct.ddc*, i32, i32) #1

declare dso_local i32 @wait_for_scl_high_sw(%struct.dc_context*, %struct.ddc*, i32) #1

declare dso_local i32 @read_bit_from_ddc(%struct.ddc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
