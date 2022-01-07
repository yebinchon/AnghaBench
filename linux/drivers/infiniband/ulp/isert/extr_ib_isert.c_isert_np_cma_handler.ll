; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_np_cma_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_np_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_np = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"%s (%d): isert np %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"isert np %p setup id failed: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"isert np %p Unexpected event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_np*, i32)* @isert_np_cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_np_cma_handler(%struct.isert_np* %0, i32 %1) #0 {
  %3 = alloca %struct.isert_np*, align 8
  %4 = alloca i32, align 4
  store %struct.isert_np* %0, %struct.isert_np** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @rdma_event_msg(i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %9 = call i32 @isert_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, %struct.isert_np* %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %34 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %2
  %12 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %13 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %16 = call i32* @isert_setup_id(%struct.isert_np* %15)
  %17 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %18 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %20 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @IS_ERR(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %26 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %27 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @PTR_ERR(i32* %28)
  %30 = call i32 @isert_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.isert_np* %25, i32 %29)
  %31 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %32 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %14
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.isert_np*, %struct.isert_np** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @isert_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.isert_np* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %33, %11
  ret i32 -1
}

declare dso_local i32 @isert_dbg(i8*, i32, i32, %struct.isert_np*) #1

declare dso_local i32 @rdma_event_msg(i32) #1

declare dso_local i32* @isert_setup_id(%struct.isert_np*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @isert_err(i8*, %struct.isert_np*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
