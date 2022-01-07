; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_reshape_request_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_reshape_request_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.r10bio = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.bio*, %struct.bio* }
%struct.bio = type { i32* }
%struct.md_rdev = type { i32, i32 }

@R10BIO_Uptodate = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r10bio*)* @reshape_request_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reshape_request_write(%struct.mddev* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 0
  %12 = load %struct.r10conf*, %struct.r10conf** %11, align 8
  store %struct.r10conf* %12, %struct.r10conf** %5, align 8
  %13 = load i32, i32* @R10BIO_Uptodate, align 4
  %14 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %15 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.mddev*, %struct.mddev** %3, align 8
  %20 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %21 = call i64 @handle_reshape_read_error(%struct.mddev* %19, %struct.r10bio* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %26 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @md_done_sync(%struct.mddev* %24, i32 %27, i32 0)
  br label %127

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %32 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %31, i32 0, i32 0
  %33 = call i32 @atomic_set(i32* %32, i32 1)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %121, %30
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %37 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %124

41:                                               ; preds = %34
  %42 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %43 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %41
  %56 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %57 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.md_rdev* @rcu_dereference(i32 %63)
  store %struct.md_rdev* %64, %struct.md_rdev** %9, align 8
  %65 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %66 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load %struct.bio*, %struct.bio** %72, align 8
  store %struct.bio* %73, %struct.bio** %7, align 8
  br label %93

74:                                               ; preds = %41
  %75 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %76 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.md_rdev* @rcu_dereference(i32 %82)
  store %struct.md_rdev* %83, %struct.md_rdev** %9, align 8
  %84 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %85 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sdiv i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.bio*, %struct.bio** %91, align 8
  store %struct.bio* %92, %struct.bio** %7, align 8
  br label %93

93:                                               ; preds = %74, %55
  %94 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %95 = icmp ne %struct.md_rdev* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* @Faulty, align 4
  %98 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %99 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %98, i32 0, i32 1
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96, %93
  %103 = call i32 (...) @rcu_read_unlock()
  br label %121

104:                                              ; preds = %96
  %105 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %106 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %105, i32 0, i32 0
  %107 = call i32 @atomic_inc(i32* %106)
  %108 = call i32 (...) @rcu_read_unlock()
  %109 = load %struct.bio*, %struct.bio** %7, align 8
  %110 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %111 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @md_sync_acct_bio(%struct.bio* %109, i32 %112)
  %114 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %115 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %114, i32 0, i32 0
  %116 = call i32 @atomic_inc(i32* %115)
  %117 = load %struct.bio*, %struct.bio** %7, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  %119 = load %struct.bio*, %struct.bio** %7, align 8
  %120 = call i32 @generic_make_request(%struct.bio* %119)
  br label %121

121:                                              ; preds = %104, %102
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %34

124:                                              ; preds = %34
  %125 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %126 = call i32 @end_reshape_request(%struct.r10bio* %125)
  br label %127

127:                                              ; preds = %124, %23
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @handle_reshape_read_error(%struct.mddev*, %struct.r10bio*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @md_sync_acct_bio(%struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @end_reshape_request(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
