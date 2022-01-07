; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_sync_request_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_sync_request_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r1conf* }
%struct.r1conf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.r1bio = type { i32, i32, %struct.bio**, i32 }
%struct.bio = type { i32*, i32 }

@R1BIO_Uptodate = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i32* null, align 8
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i32 0, align 4
@end_sync_write = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r1bio*)* @sync_request_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_request_write(%struct.mddev* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 1
  %11 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  store %struct.r1conf* %11, %struct.r1conf** %5, align 8
  %12 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %13 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @R1BIO_Uptodate, align 4
  %17 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %18 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %17, i32 0, i32 3
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %23 = call i32 @fix_sync_read_error(%struct.r1bio* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %142

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %29 = load %struct.mddev*, %struct.mddev** %3, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %35 = call i32 @process_checks(%struct.r1bio* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %38 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %37, i32 0, i32 1
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %136, %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %139

44:                                               ; preds = %40
  %45 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %46 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %45, i32 0, i32 2
  %47 = load %struct.bio**, %struct.bio*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bio*, %struct.bio** %47, i64 %49
  %51 = load %struct.bio*, %struct.bio** %50, align 8
  store %struct.bio* %51, %struct.bio** %8, align 8
  %52 = load %struct.bio*, %struct.bio** %8, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %44
  %57 = load %struct.bio*, %struct.bio** %8, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** @end_sync_read, align 8
  %61 = icmp eq i32* %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %65 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %70 = load %struct.mddev*, %struct.mddev** %3, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 0
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %62, %44
  br label %136

75:                                               ; preds = %68, %56
  %76 = load i32, i32* @Faulty, align 4
  %77 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %78 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = call i64 @test_bit(i32 %76, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.mddev*, %struct.mddev** %3, align 8
  %90 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %91 = call i32 @abort_sync_write(%struct.mddev* %89, %struct.r1bio* %90)
  br label %136

92:                                               ; preds = %75
  %93 = load %struct.bio*, %struct.bio** %8, align 8
  %94 = load i32, i32* @REQ_OP_WRITE, align 4
  %95 = call i32 @bio_set_op_attrs(%struct.bio* %93, i32 %94, i32 0)
  %96 = load i32, i32* @FailFast, align 4
  %97 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %98 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = call i64 @test_bit(i32 %96, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %92
  %109 = load i32, i32* @MD_FAILFAST, align 4
  %110 = load %struct.bio*, %struct.bio** %8, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %92
  %115 = load i32*, i32** @end_sync_write, align 8
  %116 = load %struct.bio*, %struct.bio** %8, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 0
  store i32* %115, i32** %117, align 8
  %118 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %119 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %118, i32 0, i32 1
  %120 = call i32 @atomic_inc(i32* %119)
  %121 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %122 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.bio*, %struct.bio** %8, align 8
  %132 = call i32 @bio_sectors(%struct.bio* %131)
  %133 = call i32 @md_sync_acct(i32 %130, i32 %132)
  %134 = load %struct.bio*, %struct.bio** %8, align 8
  %135 = call i32 @generic_make_request(%struct.bio* %134)
  br label %136

136:                                              ; preds = %114, %88, %74
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %40

139:                                              ; preds = %40
  %140 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %141 = call i32 @put_sync_write_buf(%struct.r1bio* %140, i32 1)
  br label %142

142:                                              ; preds = %139, %25
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fix_sync_read_error(%struct.r1bio*) #1

declare dso_local i32 @process_checks(%struct.r1bio*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @abort_sync_write(%struct.mddev*, %struct.r1bio*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @md_sync_acct(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @put_sync_write_buf(%struct.r1bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
