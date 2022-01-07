; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_get_used_rsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_get_used_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*)* @i40iw_get_used_rsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_get_used_rsrc(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %3 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %4 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %7 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @find_next_zero_bit(i32 %5, i32 %8, i32 0)
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 11
  store i8* %9, i8** %11, align 8
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @find_next_zero_bit(i32 %14, i32 %17, i32 0)
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %20 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %19, i32 0, i32 8
  store i8* %18, i8** %20, align 8
  %21 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %22 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @find_next_zero_bit(i32 %23, i32 %26, i32 0)
  %28 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %29 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %31 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %34 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @find_next_zero_bit(i32 %32, i32 %35, i32 0)
  %37 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %38 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  ret void
}

declare dso_local i8* @find_next_zero_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
