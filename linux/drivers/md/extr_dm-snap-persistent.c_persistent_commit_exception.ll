; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_commit_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_commit_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32 }
%struct.dm_exception = type { i32, i32 }
%struct.pstore = type { i32, i64, i32, i64, %struct.commit_callback*, i64, i32 }
%struct.commit_callback = type { void (i8*, i32)*, i8* }
%struct.core_exception = type { i32, i32 }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_exception_store*, %struct.dm_exception*, i32, void (i8*, i32)*, i8*)* @persistent_commit_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persistent_commit_exception(%struct.dm_exception_store* %0, %struct.dm_exception* %1, i32 %2, void (i8*, i32)* %3, i8* %4) #0 {
  %6 = alloca %struct.dm_exception_store*, align 8
  %7 = alloca %struct.dm_exception*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i8*, i32)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pstore*, align 8
  %13 = alloca %struct.core_exception, align 4
  %14 = alloca %struct.commit_callback*, align 8
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %6, align 8
  store %struct.dm_exception* %1, %struct.dm_exception** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (i8*, i32)* %3, void (i8*, i32)** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.dm_exception_store*, %struct.dm_exception_store** %6, align 8
  %16 = call %struct.pstore* @get_info(%struct.dm_exception_store* %15)
  store %struct.pstore* %16, %struct.pstore** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load %struct.pstore*, %struct.pstore** %12, align 8
  %21 = getelementptr inbounds %struct.pstore, %struct.pstore* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %5
  %23 = load %struct.dm_exception*, %struct.dm_exception** %7, align 8
  %24 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %13, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.dm_exception*, %struct.dm_exception** %7, align 8
  %28 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %13, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.pstore*, %struct.pstore** %12, align 8
  %32 = load %struct.pstore*, %struct.pstore** %12, align 8
  %33 = getelementptr inbounds %struct.pstore, %struct.pstore* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = trunc i64 %34 to i32
  %37 = call i32 @write_exception(%struct.pstore* %31, i32 %36, %struct.core_exception* %13)
  %38 = load %struct.pstore*, %struct.pstore** %12, align 8
  %39 = getelementptr inbounds %struct.pstore, %struct.pstore* %38, i32 0, i32 4
  %40 = load %struct.commit_callback*, %struct.commit_callback** %39, align 8
  %41 = load %struct.pstore*, %struct.pstore** %12, align 8
  %42 = getelementptr inbounds %struct.pstore, %struct.pstore* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %40, i64 %45
  store %struct.commit_callback* %46, %struct.commit_callback** %14, align 8
  %47 = load void (i8*, i32)*, void (i8*, i32)** %9, align 8
  %48 = load %struct.commit_callback*, %struct.commit_callback** %14, align 8
  %49 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %48, i32 0, i32 0
  store void (i8*, i32)* %47, void (i8*, i32)** %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.commit_callback*, %struct.commit_callback** %14, align 8
  %52 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.pstore*, %struct.pstore** %12, align 8
  %54 = getelementptr inbounds %struct.pstore, %struct.pstore* %53, i32 0, i32 6
  %55 = call i32 @atomic_dec_and_test(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %22
  %58 = load %struct.pstore*, %struct.pstore** %12, align 8
  %59 = getelementptr inbounds %struct.pstore, %struct.pstore* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.pstore*, %struct.pstore** %12, align 8
  %62 = getelementptr inbounds %struct.pstore, %struct.pstore* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %149

66:                                               ; preds = %57, %22
  %67 = load %struct.pstore*, %struct.pstore** %12, align 8
  %68 = getelementptr inbounds %struct.pstore, %struct.pstore* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pstore*, %struct.pstore** %12, align 8
  %71 = getelementptr inbounds %struct.pstore, %struct.pstore* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load %struct.pstore*, %struct.pstore** %12, align 8
  %76 = load %struct.pstore*, %struct.pstore** %12, align 8
  %77 = getelementptr inbounds %struct.pstore, %struct.pstore* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  %80 = call i64 @zero_disk_area(%struct.pstore* %75, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.pstore*, %struct.pstore** %12, align 8
  %84 = getelementptr inbounds %struct.pstore, %struct.pstore* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %74, %66
  %86 = load %struct.pstore*, %struct.pstore** %12, align 8
  %87 = getelementptr inbounds %struct.pstore, %struct.pstore* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.pstore*, %struct.pstore** %12, align 8
  %92 = load i32, i32* @REQ_OP_WRITE, align 4
  %93 = load i32, i32* @REQ_PREFLUSH, align 4
  %94 = load i32, i32* @REQ_FUA, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @REQ_SYNC, align 4
  %97 = or i32 %95, %96
  %98 = call i64 @area_io(%struct.pstore* %91, i32 %92, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.pstore*, %struct.pstore** %12, align 8
  %102 = getelementptr inbounds %struct.pstore, %struct.pstore* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %90, %85
  %104 = load %struct.pstore*, %struct.pstore** %12, align 8
  %105 = getelementptr inbounds %struct.pstore, %struct.pstore* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pstore*, %struct.pstore** %12, align 8
  %108 = getelementptr inbounds %struct.pstore, %struct.pstore* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load %struct.pstore*, %struct.pstore** %12, align 8
  %113 = getelementptr inbounds %struct.pstore, %struct.pstore* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.pstore*, %struct.pstore** %12, align 8
  %115 = getelementptr inbounds %struct.pstore, %struct.pstore* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load %struct.pstore*, %struct.pstore** %12, align 8
  %119 = call i32 @zero_memory_area(%struct.pstore* %118)
  br label %120

120:                                              ; preds = %111, %103
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %143, %120
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.pstore*, %struct.pstore** %12, align 8
  %124 = getelementptr inbounds %struct.pstore, %struct.pstore* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.pstore*, %struct.pstore** %12, align 8
  %129 = getelementptr inbounds %struct.pstore, %struct.pstore* %128, i32 0, i32 4
  %130 = load %struct.commit_callback*, %struct.commit_callback** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %130, i64 %132
  store %struct.commit_callback* %133, %struct.commit_callback** %14, align 8
  %134 = load %struct.commit_callback*, %struct.commit_callback** %14, align 8
  %135 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %134, i32 0, i32 0
  %136 = load void (i8*, i32)*, void (i8*, i32)** %135, align 8
  %137 = load %struct.commit_callback*, %struct.commit_callback** %14, align 8
  %138 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.pstore*, %struct.pstore** %12, align 8
  %141 = getelementptr inbounds %struct.pstore, %struct.pstore* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  call void %136(i8* %139, i32 %142)
  br label %143

143:                                              ; preds = %127
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %121

146:                                              ; preds = %121
  %147 = load %struct.pstore*, %struct.pstore** %12, align 8
  %148 = getelementptr inbounds %struct.pstore, %struct.pstore* %147, i32 0, i32 2
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %65
  ret void
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @write_exception(%struct.pstore*, i32, %struct.core_exception*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @zero_disk_area(%struct.pstore*, i64) #1

declare dso_local i64 @area_io(%struct.pstore*, i32, i32) #1

declare dso_local i32 @zero_memory_area(%struct.pstore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
