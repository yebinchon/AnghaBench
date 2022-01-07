; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_mod_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_mod_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@BITS_PER_REGISTER = common dso_local global i32 0, align 4
@CCE_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i32, i32)* @read_mod_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_mod_write(%struct.hfi1_devdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BITS_PER_REGISTER, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %18 = load i64, i64* @CCE_INT_MASK, align 8
  %19 = load i32, i32* %10, align 4
  %20 = mul nsw i32 8, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @read_csr(%struct.hfi1_devdata* %17, i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %37 = load i64, i64* @CCE_INT_MASK, align 8
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 8, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @write_csr(%struct.hfi1_devdata* %36, i64 %41, i32 %42)
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
