; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_amd64_read_dct_pci_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_amd64_read_dct_pci_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32, i32*)* @amd64_read_dct_pci_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %11 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %58 [
    i32 15, label %13
    i32 16, label %23
    i32 21, label %35
    i32 22, label %51
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 256
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %16
  br label %59

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %28 = call i32 @dct_ganging_enabled(%struct.amd64_pvt* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %66

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 256
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %23
  br label %59

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %40 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 48
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 3, %43 ], [ %45, %44 ]
  store i32 %47, i32* %7, align 4
  %48 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @f15h_select_dct(%struct.amd64_pvt* %48, i32 %49)
  br label %59

51:                                               ; preds = %4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %66

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %4
  br label %59

59:                                               ; preds = %58, %57, %46, %34, %22
  %60 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %61 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @amd64_read_pci_cfg(i32 %62, i32 %63, i32* %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %54, %30, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @f15h_select_dct(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
