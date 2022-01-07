; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_remap_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_remap_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32* }

@CCE_NUM_INT_CSRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"remap interrupt err\0A\00", align 1
@CCE_INT_MAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remap_intr(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 64
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = srem i32 %12, 64
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @CCE_NUM_INT_CSRS, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %23
  store i32 %31, i32* %29, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %34 = call i32 @dd_dev_err(%struct.hfi1_devdata* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %68

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = srem i32 %38, 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %41 = load i64, i64* @CCE_INT_MAP, align 8
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 8, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @read_csr(%struct.hfi1_devdata* %40, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 8, %47
  %49 = shl i32 255, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 255
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 8, %55
  %57 = shl i32 %54, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %61 = load i64, i64* @CCE_INT_MAP, align 8
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 8, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @write_csr(%struct.hfi1_devdata* %60, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %35, %32
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
