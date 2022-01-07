; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_calc_crc2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_calc_crc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipack_device*)* @ipack_calc_crc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipack_calc_crc2(%struct.ipack_device* %0) #0 {
  %2 = alloca %struct.ipack_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipack_device* %0, %struct.ipack_device** %2, align 8
  store i32 65535, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %9 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 24
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 25
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %20 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %15, %12
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %25, %18 ], [ 0, %26 ]
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ipack_crc_byte(i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* %4, align 4
  %37 = xor i32 %36, -1
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @ipack_crc_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
