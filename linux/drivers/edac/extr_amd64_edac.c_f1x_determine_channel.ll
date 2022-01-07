; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_determine_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_determine_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32, i32)* @f1x_determine_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_determine_channel(%struct.amd64_pvt* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %16 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 1
  %19 = and i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %21 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %24
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %31 = call i64 @dct_interleave_enabled(%struct.amd64_pvt* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %35 = call i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 6
  %41 = and i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %93

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 9, i32 6
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 31
  %55 = call i32 @hweight_long(i32 %54)
  %56 = and i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 1
  %61 = load i32, i32* %13, align 4
  %62 = xor i32 %60, %61
  store i32 %62, i32* %5, align 4
  br label %93

63:                                               ; preds = %42
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 9, i32 8
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %14, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %93

77:                                               ; preds = %63
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @hweight8(i32 %79)
  %81 = add nsw i32 12, %80
  %82 = ashr i32 %78, %81
  %83 = and i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %93

84:                                               ; preds = %29
  %85 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %86 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %88, %77, %67, %46, %38, %27, %23
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_interleave_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @dct_sel_interleave_addr(%struct.amd64_pvt*) #1

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i64 @dct_high_range_enabled(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
