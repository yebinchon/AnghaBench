; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_recovery_request_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_recovery_request_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.r10bio = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.bio*, %struct.bio* }
%struct.bio = type { i64 }

@R10BIO_Uptodate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r10bio*)* @recovery_request_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recovery_request_write(%struct.mddev* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load %struct.r10conf*, %struct.r10conf** %10, align 8
  store %struct.r10conf* %11, %struct.r10conf** %5, align 8
  %12 = load i32, i32* @R10BIO_Uptodate, align 4
  %13 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %14 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %13, i32 0, i32 1
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %19 = call i32 @fix_recovery_read_error(%struct.r10bio* %18)
  %20 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %21 = call i32 @end_sync_request(%struct.r10bio* %20)
  br label %109

22:                                               ; preds = %2
  %23 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %24 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %30 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  store %struct.bio* %34, %struct.bio** %7, align 8
  %35 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %36 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.bio*, %struct.bio** %39, align 8
  store %struct.bio* %40, %struct.bio** %8, align 8
  %41 = load %struct.bio*, %struct.bio** %8, align 8
  %42 = icmp ne %struct.bio* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %22
  %44 = load %struct.bio*, %struct.bio** %8, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store %struct.bio* null, %struct.bio** %8, align 8
  br label %49

49:                                               ; preds = %48, %43, %22
  %50 = load %struct.bio*, %struct.bio** %7, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %56 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %66 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bio*, %struct.bio** %7, align 8
  %76 = call i32 @bio_sectors(%struct.bio* %75)
  %77 = call i32 @md_sync_acct(i32 %74, i32 %76)
  %78 = load %struct.bio*, %struct.bio** %7, align 8
  %79 = call i32 @generic_make_request(%struct.bio* %78)
  br label %80

80:                                               ; preds = %54, %49
  %81 = load %struct.bio*, %struct.bio** %8, align 8
  %82 = icmp ne %struct.bio* %81, null
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %85 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = call i32 @atomic_inc(i32* %92)
  %94 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %95 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bio*, %struct.bio** %8, align 8
  %105 = call i32 @bio_sectors(%struct.bio* %104)
  %106 = call i32 @md_sync_acct(i32 %103, i32 %105)
  %107 = load %struct.bio*, %struct.bio** %8, align 8
  %108 = call i32 @generic_make_request(%struct.bio* %107)
  br label %109

109:                                              ; preds = %17, %83, %80
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @fix_recovery_read_error(%struct.r10bio*) #1

declare dso_local i32 @end_sync_request(%struct.r10bio*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @md_sync_acct(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
