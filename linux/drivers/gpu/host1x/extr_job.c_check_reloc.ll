; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_reloc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.host1x_bo* }
%struct.host1x_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_reloc*, %struct.host1x_bo*, i32)* @check_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reloc(%struct.host1x_reloc* %0, %struct.host1x_bo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.host1x_reloc*, align 8
  %6 = alloca %struct.host1x_bo*, align 8
  %7 = alloca i32, align 4
  store %struct.host1x_reloc* %0, %struct.host1x_reloc** %5, align 8
  store %struct.host1x_bo* %1, %struct.host1x_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.host1x_reloc*, %struct.host1x_reloc** %5, align 8
  %13 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.host1x_bo*, %struct.host1x_bo** %14, align 8
  %16 = load %struct.host1x_bo*, %struct.host1x_bo** %6, align 8
  %17 = icmp ne %struct.host1x_bo* %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.host1x_reloc*, %struct.host1x_reloc** %5, align 8
  %20 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load %struct.host1x_reloc*, %struct.host1x_reloc** %5, align 8
  %28 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %33

32:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
