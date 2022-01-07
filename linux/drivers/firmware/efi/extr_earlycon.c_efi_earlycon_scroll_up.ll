; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_earlycon.c_efi_earlycon_scroll_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_earlycon.c_efi_earlycon_scroll_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@screen_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@font = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @efi_earlycon_scroll_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_earlycon_scroll_up() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @screen_info, i32 0, i32 0), align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @screen_info, i32 0, i32 1), align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %52, %0
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @font, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = call i64* @efi_earlycon_map(i32 %19, i32 %20)
  store i64* %21, i64** %1, align 8
  %22 = load i64*, i64** %1, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %55

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @font, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = call i64* @efi_earlycon_map(i32 %32, i32 %33)
  store i64* %34, i64** %2, align 8
  %35 = load i64*, i64** %2, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load i64*, i64** %1, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @efi_earlycon_unmap(i64* %38, i32 %39)
  br label %55

41:                                               ; preds = %25
  %42 = load i64*, i64** %1, align 8
  %43 = load i64*, i64** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @memmove(i64* %42, i64* %43, i32 %44)
  %46 = load i64*, i64** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @efi_earlycon_unmap(i64* %46, i32 %47)
  %49 = load i64*, i64** %1, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @efi_earlycon_unmap(i64* %49, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %8

55:                                               ; preds = %24, %37, %8
  ret void
}

declare dso_local i64* @efi_earlycon_map(i32, i32) #1

declare dso_local i32 @efi_earlycon_unmap(i64*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
