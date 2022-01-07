; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_ff_private_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hidpp_ff_work_data = type { i32, i32, i32, i8*, i8*, %struct.hidpp_ff_private_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hidpp_ff_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Force feedback command queue contains %d commands, causing substantial delays!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_ff_private_data*, i32, i8*, i8**, i8*)* @hidpp_ff_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_ff_queue_work(%struct.hidpp_ff_private_data* %0, i32 %1, i8* %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidpp_ff_private_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hidpp_ff_work_data*, align 8
  %13 = alloca i32, align 4
  store %struct.hidpp_ff_private_data* %0, %struct.hidpp_ff_private_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hidpp_ff_work_data* @kzalloc(i32 40, i32 %14)
  store %struct.hidpp_ff_work_data* %15, %struct.hidpp_ff_work_data** %12, align 8
  %16 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %17 = icmp ne %struct.hidpp_ff_work_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %71

21:                                               ; preds = %5
  %22 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %23 = getelementptr inbounds %struct.hidpp_ff_work_data, %struct.hidpp_ff_work_data* %22, i32 0, i32 1
  %24 = load i32, i32* @hidpp_ff_work_handler, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %7, align 8
  %27 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %28 = getelementptr inbounds %struct.hidpp_ff_work_data, %struct.hidpp_ff_work_data* %27, i32 0, i32 5
  store %struct.hidpp_ff_private_data* %26, %struct.hidpp_ff_private_data** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %31 = getelementptr inbounds %struct.hidpp_ff_work_data, %struct.hidpp_ff_work_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %34 = getelementptr inbounds %struct.hidpp_ff_work_data, %struct.hidpp_ff_work_data* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %37 = getelementptr inbounds %struct.hidpp_ff_work_data, %struct.hidpp_ff_work_data* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %39 = getelementptr inbounds %struct.hidpp_ff_work_data, %struct.hidpp_ff_work_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i8**, i8*** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @memcpy(i32 %40, i8** %41, i8* %42)
  %44 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %7, align 8
  %45 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %44, i32 0, i32 1
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %7, align 8
  %48 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hidpp_ff_work_data*, %struct.hidpp_ff_work_data** %12, align 8
  %51 = getelementptr inbounds %struct.hidpp_ff_work_data, %struct.hidpp_ff_work_data* %50, i32 0, i32 1
  %52 = call i32 @queue_work(i32 %49, i32* %51)
  %53 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %7, align 8
  %54 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %53, i32 0, i32 1
  %55 = call i32 @atomic_read(i32* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, 20
  br i1 %57, label %58, label %70

58:                                               ; preds = %21
  %59 = load i32, i32* %13, align 4
  %60 = srem i32 %59, 20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %7, align 8
  %64 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @hid_warn(i32 %67, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %58, %21
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %18
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.hidpp_ff_work_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @hid_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
