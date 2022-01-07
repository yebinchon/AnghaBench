; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.stripe_c* }
%struct.stripe_c = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i8*)* @stripe_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, i32, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stripe_c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  store %struct.stripe_c* %12, %struct.stripe_c** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %47, %3
  %14 = load i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  %15 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %16 = load %struct.stripe_c*, %struct.stripe_c** %7, align 8
  %17 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stripe_c*, %struct.stripe_c** %7, align 8
  %25 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.stripe_c*, %struct.stripe_c** %7, align 8
  %33 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 %14(%struct.dm_target* %15, i32 %23, i32 %31, i32 %34, i8* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %13
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load %struct.stripe_c*, %struct.stripe_c** %7, align 8
  %44 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br label %47

47:                                               ; preds = %40, %37
  %48 = phi i1 [ false, %37 ], [ %46, %40 ]
  br i1 %48, label %13, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
