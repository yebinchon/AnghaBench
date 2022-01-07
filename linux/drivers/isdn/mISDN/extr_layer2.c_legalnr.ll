; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_legalnr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_legalnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i32, i32 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, i32)* @legalnr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legalnr(%struct.layer2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.layer2*, align 8
  %5 = alloca i32, align 4
  store %struct.layer2* %0, %struct.layer2** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @FLG_MOD128, align 4
  %7 = load %struct.layer2*, %struct.layer2** %4, align 8
  %8 = getelementptr inbounds %struct.layer2, %struct.layer2* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.layer2*, %struct.layer2** %4, align 8
  %14 = getelementptr inbounds %struct.layer2, %struct.layer2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %12, %15
  %17 = urem i32 %16, 128
  %18 = load %struct.layer2*, %struct.layer2** %4, align 8
  %19 = getelementptr inbounds %struct.layer2, %struct.layer2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.layer2*, %struct.layer2** %4, align 8
  %22 = getelementptr inbounds %struct.layer2, %struct.layer2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  %25 = urem i32 %24, 128
  %26 = icmp ule i32 %17, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.layer2*, %struct.layer2** %4, align 8
  %31 = getelementptr inbounds %struct.layer2, %struct.layer2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %29, %32
  %34 = urem i32 %33, 8
  %35 = load %struct.layer2*, %struct.layer2** %4, align 8
  %36 = getelementptr inbounds %struct.layer2, %struct.layer2* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.layer2*, %struct.layer2** %4, align 8
  %39 = getelementptr inbounds %struct.layer2, %struct.layer2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  %42 = urem i32 %41, 8
  %43 = icmp ule i32 %34, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %28, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
