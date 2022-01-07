; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_find_gid_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_find_gid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i64 }
%struct.find_gid_index_context = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* @find_gid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_gid_index(%union.ib_gid* %0, %struct.ib_gid_attr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.find_gid_index_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %union.ib_gid* %0, %union.ib_gid** %5, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.find_gid_index_context*
  store %struct.find_gid_index_context* %12, %struct.find_gid_index_context** %8, align 8
  store i64 65535, i64* %9, align 8
  %13 = load %struct.find_gid_index_context*, %struct.find_gid_index_context** %8, align 8
  %14 = getelementptr inbounds %struct.find_gid_index_context, %struct.find_gid_index_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %17 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %23 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %22, i64* %9, i32* null)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.find_gid_index_context*, %struct.find_gid_index_context** %8, align 8
  %29 = getelementptr inbounds %struct.find_gid_index_context, %struct.find_gid_index_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %26, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
