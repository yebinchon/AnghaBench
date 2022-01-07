; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_readpcibridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_readpcibridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i64 }

@R_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.hfc_multi*, i8)* @readpcibridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @readpcibridge(%struct.hfc_multi* %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.hfc_multi*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  store %struct.hfc_multi* %0, %struct.hfc_multi** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %9 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8 0, i8* %3, align 1
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %15 = load i32, i32* @R_CTRL, align 4
  %16 = call i32 @HFC_outb(%struct.hfc_multi* %14, i32 %15, i32 4)
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i16 16384, i16* %6, align 2
  br label %22

21:                                               ; preds = %13
  store i16 22528, i16* %6, align 2
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i16, i16* %6, align 2
  %24 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %25 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 4
  %28 = call i32 @outw(i16 zeroext %23, i64 %27)
  %29 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %30 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call zeroext i8 @inb(i64 %31)
  store i8 %32, i8* %7, align 1
  %33 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %34 = load i32, i32* @R_CTRL, align 4
  %35 = call i32 @HFC_outb(%struct.hfc_multi* %33, i32 %34, i32 0)
  %36 = load i8, i8* %7, align 1
  store i8 %36, i8* %3, align 1
  br label %37

37:                                               ; preds = %22, %12
  %38 = load i8, i8* %3, align 1
  ret i8 %38
}

declare dso_local i32 @HFC_outb(%struct.hfc_multi*, i32, i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
