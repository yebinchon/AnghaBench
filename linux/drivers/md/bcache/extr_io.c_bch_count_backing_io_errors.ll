; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_io.c_bch_count_backing_io_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_io.c_bch_count_backing_io_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32, i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"NULL pointer of struct cached_dev\00", align 1
@REQ_RAHEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: Read-ahead I/O failed on backing device, ignore\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: IO error on backing device, unrecoverable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_count_backing_io_errors(%struct.cached_dev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cached_dev*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.cached_dev* %0, %struct.cached_dev** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %7 = icmp ne %struct.cached_dev* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ONCE(i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REQ_RAHEAD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %23, i32 0, i32 2
  %25 = call i32 @atomic_add_return(i32 1, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %28 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %33 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %39

36:                                               ; preds = %22
  %37 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %38 = call i32 @bch_cached_dev_error(%struct.cached_dev* %37)
  br label %39

39:                                               ; preds = %17, %36, %31
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @bch_cached_dev_error(%struct.cached_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
