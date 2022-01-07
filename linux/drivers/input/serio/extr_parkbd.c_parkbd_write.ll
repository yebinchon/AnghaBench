; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_parkbd.c_parkbd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_parkbd.c_parkbd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }

@parkbd_mode = common dso_local global i32 0, align 4
@parkbd_counter = common dso_local global i64 0, align 8
@parkbd_writing = common dso_local global i32 0, align 4
@parkbd_buffer = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @parkbd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parkbd_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i32, i32* @parkbd_mode, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

10:                                               ; preds = %2
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = ashr i32 %14, 4
  %16 = xor i32 %12, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %6, align 1
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = ashr i32 %21, 2
  %23 = xor i32 %19, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %6, align 1
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 1
  %30 = xor i32 %26, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  store i64 0, i64* @parkbd_counter, align 8
  store i32 1, i32* @parkbd_writing, align 4
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %35, -1
  %37 = and i32 %36, 1
  %38 = shl i32 %37, 8
  %39 = or i32 %33, %38
  %40 = or i32 %39, 1536
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* @parkbd_buffer, align 1
  %42 = call i32 @parkbd_writelines(i32 2)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %10, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @parkbd_writelines(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
