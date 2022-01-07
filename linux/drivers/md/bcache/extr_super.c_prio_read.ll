; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_prio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_prio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__, i8**, i8**, %struct.bucket*, %struct.prio_set* }
%struct.TYPE_2__ = type { i32 }
%struct.bucket = type { i32, i32, i32 }
%struct.prio_set = type { i64, i64, %struct.bucket_disk*, i8* }
%struct.bucket_disk = type { i32, i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bad csum reading priorities\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bad magic reading priorities\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i8*)* @prio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prio_read(%struct.cache* %0, i8* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prio_set*, align 8
  %6 = alloca %struct.bucket_disk*, align 8
  %7 = alloca %struct.bucket_disk*, align 8
  %8 = alloca %struct.bucket*, align 8
  %9 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.cache*, %struct.cache** %3, align 8
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 4
  %12 = load %struct.prio_set*, %struct.prio_set** %11, align 8
  store %struct.prio_set* %12, %struct.prio_set** %5, align 8
  %13 = load %struct.prio_set*, %struct.prio_set** %5, align 8
  %14 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %13, i32 0, i32 2
  %15 = load %struct.bucket_disk*, %struct.bucket_disk** %14, align 8
  %16 = load %struct.cache*, %struct.cache** %3, align 8
  %17 = call i32 @prios_per_bucket(%struct.cache* %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %15, i64 %18
  store %struct.bucket_disk* %19, %struct.bucket_disk** %6, align 8
  %20 = load %struct.bucket_disk*, %struct.bucket_disk** %6, align 8
  store %struct.bucket_disk* %20, %struct.bucket_disk** %7, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.cache*, %struct.cache** %3, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 3
  %23 = load %struct.bucket*, %struct.bucket** %22, align 8
  store %struct.bucket* %23, %struct.bucket** %8, align 8
  br label %24

24:                                               ; preds = %104, %2
  %25 = load %struct.bucket*, %struct.bucket** %8, align 8
  %26 = load %struct.cache*, %struct.cache** %3, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 3
  %28 = load %struct.bucket*, %struct.bucket** %27, align 8
  %29 = load %struct.cache*, %struct.cache** %3, align 8
  %30 = getelementptr inbounds %struct.cache, %struct.cache* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bucket, %struct.bucket* %28, i64 %33
  %35 = icmp ult %struct.bucket* %25, %34
  br i1 %35, label %36, label %109

36:                                               ; preds = %24
  %37 = load %struct.bucket_disk*, %struct.bucket_disk** %6, align 8
  %38 = load %struct.bucket_disk*, %struct.bucket_disk** %7, align 8
  %39 = icmp eq %struct.bucket_disk* %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.cache*, %struct.cache** %3, align 8
  %43 = getelementptr inbounds %struct.cache, %struct.cache* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.cache*, %struct.cache** %3, align 8
  %50 = getelementptr inbounds %struct.cache, %struct.cache* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load %struct.cache*, %struct.cache** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* @REQ_OP_READ, align 4
  %60 = call i32 @prio_io(%struct.cache* %57, i8* %58, i32 %59, i32 0)
  %61 = load %struct.prio_set*, %struct.prio_set** %5, align 8
  %62 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.prio_set*, %struct.prio_set** %5, align 8
  %65 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %64, i32 0, i32 1
  %66 = load %struct.cache*, %struct.cache** %3, align 8
  %67 = call i64 @bucket_bytes(%struct.cache* %66)
  %68 = sub nsw i64 %67, 8
  %69 = call i64 @bch_crc64(i64* %65, i64 %68)
  %70 = icmp ne i64 %63, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %40
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %40
  %74 = load %struct.prio_set*, %struct.prio_set** %5, align 8
  %75 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.cache*, %struct.cache** %3, align 8
  %78 = getelementptr inbounds %struct.cache, %struct.cache* %77, i32 0, i32 0
  %79 = call i64 @pset_magic(%struct.TYPE_2__* %78)
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %73
  %84 = load %struct.prio_set*, %struct.prio_set** %5, align 8
  %85 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %4, align 8
  %87 = load %struct.prio_set*, %struct.prio_set** %5, align 8
  %88 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %87, i32 0, i32 2
  %89 = load %struct.bucket_disk*, %struct.bucket_disk** %88, align 8
  store %struct.bucket_disk* %89, %struct.bucket_disk** %6, align 8
  br label %90

90:                                               ; preds = %83, %36
  %91 = load %struct.bucket_disk*, %struct.bucket_disk** %6, align 8
  %92 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = load %struct.bucket*, %struct.bucket** %8, align 8
  %96 = getelementptr inbounds %struct.bucket, %struct.bucket* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bucket_disk*, %struct.bucket_disk** %6, align 8
  %98 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bucket*, %struct.bucket** %8, align 8
  %101 = getelementptr inbounds %struct.bucket, %struct.bucket* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.bucket*, %struct.bucket** %8, align 8
  %103 = getelementptr inbounds %struct.bucket, %struct.bucket* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %90
  %105 = load %struct.bucket*, %struct.bucket** %8, align 8
  %106 = getelementptr inbounds %struct.bucket, %struct.bucket* %105, i32 1
  store %struct.bucket* %106, %struct.bucket** %8, align 8
  %107 = load %struct.bucket_disk*, %struct.bucket_disk** %6, align 8
  %108 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %107, i32 1
  store %struct.bucket_disk* %108, %struct.bucket_disk** %6, align 8
  br label %24

109:                                              ; preds = %24
  ret void
}

declare dso_local i32 @prios_per_bucket(%struct.cache*) #1

declare dso_local i32 @prio_io(%struct.cache*, i8*, i32, i32) #1

declare dso_local i64 @bch_crc64(i64*, i64) #1

declare dso_local i64 @bucket_bytes(%struct.cache*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @pset_magic(%struct.TYPE_2__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
