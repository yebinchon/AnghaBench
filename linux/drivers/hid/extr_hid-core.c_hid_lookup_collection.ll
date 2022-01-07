; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_lookup_collection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_lookup_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hid_collection* }
%struct.hid_collection = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, i32)* @hid_lookup_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_lookup_collection(%struct.hid_parser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_collection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %10 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hid_collection*, %struct.hid_collection** %12, align 8
  store %struct.hid_collection* %13, %struct.hid_collection** %6, align 8
  %14 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %15 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %45, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %23 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %29, i64 %31
  %33 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %21
  %38 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %38, i64 %40
  %42 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %18

48:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
