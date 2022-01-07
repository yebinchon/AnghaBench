; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: NETjet config port %#x-%#x already in use\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@nj = common dso_local global i32 0, align 4
@ISAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiger_hw*)* @nj_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nj_setup(%struct.tiger_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tiger_hw*, align 8
  store %struct.tiger_hw* %0, %struct.tiger_hw** %3, align 8
  %4 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %5 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pci_resource_start(i32 %6, i32 0)
  %8 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %9 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %11 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_resource_len(i32 %12, i32 0)
  %14 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %15 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %17 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %20 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %23 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @request_region(i32 %18, i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %1
  %28 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %29 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %32 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %35 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %38 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %41)
  %43 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %44 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %54

47:                                               ; preds = %1
  %48 = load i32, i32* @nj, align 4
  %49 = load i32, i32* @ISAC, align 4
  %50 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %51 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ASSIGN_FUNC(i32 %48, i32 %49, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %27
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @ASSIGN_FUNC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
