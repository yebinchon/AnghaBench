; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_setup_subctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_setup_subctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32*, i32*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ctxtdata*)* @setup_subctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_subctxt(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call i8* @vmalloc_user(i32 %9)
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %1
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %23 = call i32 @rcvhdrq_size(%struct.hfi1_ctxtdata* %22)
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i8* @vmalloc_user(i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %21
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %39 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i8* @vmalloc_user(i32 %43)
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %70

55:                                               ; preds = %51
  %56 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %57 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @vfree(i32* %58)
  %60 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %61 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %34
  %63 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %64 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @vfree(i32* %65)
  %67 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %68 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %54, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @vmalloc_user(i32) #1

declare dso_local i32 @rcvhdrq_size(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
