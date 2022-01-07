; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_create_multi_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_create_multi_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.scatterlist*, %struct.scatterlist*, i32)* @create_multi_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @create_multi_sg(%struct.scatterlist* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  store %struct.scatterlist* %9, %struct.scatterlist** %7, align 8
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %15 = icmp ne %struct.scatterlist* %14, null
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %41

18:                                               ; preds = %16
  %19 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %20 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %30 = call i32 @sg_virt(%struct.scatterlist* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @sg_set_buf(%struct.scatterlist* %28, i32 %30, i32 %31)
  %33 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %34 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %33)
  store %struct.scatterlist* %34, %struct.scatterlist** %5, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 1
  store %struct.scatterlist* %36, %struct.scatterlist** %7, align 8
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %10

41:                                               ; preds = %16
  %42 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  ret %struct.scatterlist* %42
}

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
