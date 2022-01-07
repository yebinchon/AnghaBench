; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_write_rsa_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_write_rsa_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i32*, i32)* @write_rsa_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rsa_data(%struct.hfi1_devdata* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = and i64 %16, 7
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  store i32* %20, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %34, %19
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 8, %28
  %30 = add nsw i32 %27, %29
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @write_csr(%struct.hfi1_devdata* %26, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %11, align 8
  br label %21

39:                                               ; preds = %21
  br label %61

40:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @memcpy(i32* %12, i32* %46, i32 8)
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 8, %50
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @write_csr(%struct.hfi1_devdata* %48, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  store i32* %59, i32** %7, align 8
  br label %41

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %39
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
