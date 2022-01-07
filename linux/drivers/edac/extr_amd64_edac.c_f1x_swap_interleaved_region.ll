; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_swap_interleaved_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_swap_interleaved_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i32, i32 }

@SWAP_INTLV_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32)* @f1x_swap_interleaved_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_swap_interleaved_region(%struct.amd64_pvt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %12 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %17 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %22 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %27 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %15
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %25, %20
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %35 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SWAP_INTLV_REG, align 4
  %38 = call i32 @amd64_read_pci_cfg(i32 %36, i32 %37, i32* %6)
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %3, align 4
  br label %78

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 3
  %47 = and i32 %46, 127
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 11
  %50 = and i32 %49, 127
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 20
  %53 = and i32 %52, 127
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 27
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 34
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 %73, 27
  %75 = xor i32 %72, %74
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %67, %44
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %71, %42, %30
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
