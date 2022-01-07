; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_hfi1_pcie_ddcleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_hfi1_pcie_ddcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32*, i32*, i32*, i32*, i32 }

@HFI1_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_pcie_ddcleanup(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %3 = load i32, i32* @HFI1_PRESENT, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @iounmap(i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @iounmap(i32* %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @iounmap(i32* %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @iounmap(i32* %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
