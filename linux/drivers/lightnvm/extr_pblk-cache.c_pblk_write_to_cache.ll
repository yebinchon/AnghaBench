; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-cache.c_pblk_write_to_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-cache.c_pblk_write_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.bio = type { i32 }
%struct.pblk_w_ctx = type { i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@PBLK_FLUSH_ENTRY = common dso_local global i64 0, align 8
@PBLK_EXPOSED_PAGE_SIZE = common dso_local global i32 0, align 4
@NVM_IO_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_write_to_cache(%struct.pblk* %0, %struct.bio* %1, i64 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.pblk_w_ctx, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.pblk*, %struct.pblk** %4, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.request_queue*, %struct.request_queue** %20, align 8
  store %struct.request_queue* %21, %struct.request_queue** %7, align 8
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = call i64 @pblk_get_lba(%struct.bio* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @pblk_get_secs(%struct.bio* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %28 = load i32, i32* @REQ_OP_WRITE, align 4
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = call i32 @bio_sectors(%struct.bio* %29)
  %31 = load %struct.pblk*, %struct.pblk** %4, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @generic_start_io_acct(%struct.request_queue* %27, i32 %28, i32 %30, i32* %34)
  br label %36

36:                                               ; preds = %43, %3
  %37 = load %struct.pblk*, %struct.pblk** %4, align 8
  %38 = getelementptr inbounds %struct.pblk, %struct.pblk* %37, i32 0, i32 5
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @pblk_rb_may_write_user(i32* %38, %struct.bio* %39, i32 %40, i32* %11)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  switch i32 %42, label %50 [
    i32 128, label %43
    i32 129, label %45
  ]

43:                                               ; preds = %36
  %44 = call i32 (...) @io_schedule()
  br label %36

45:                                               ; preds = %36
  %46 = load %struct.pblk*, %struct.pblk** %4, align 8
  %47 = call i32 @pblk_pipeline_stop(%struct.pblk* %46)
  %48 = load %struct.bio*, %struct.bio** %5, align 8
  %49 = call i32 @bio_io_error(%struct.bio* %48)
  br label %116

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %8, i32 0, i32 2
  %52 = call i32 @pblk_ppa_set_empty(i32* %51)
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %8, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.bio*, %struct.bio** %5, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @REQ_PREFLUSH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load i64, i64* @PBLK_FLUSH_ENTRY, align 8
  %63 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %62
  store i64 %65, i64* %63, align 8
  %66 = load %struct.pblk*, %struct.pblk** %4, align 8
  %67 = call i32 @pblk_write_kick(%struct.pblk* %66)
  br label %68

68:                                               ; preds = %61, %50
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = call i32 @bio_has_data(%struct.bio* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %116

77:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %104, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load %struct.bio*, %struct.bio** %5, align 8
  %84 = call i8* @bio_data(%struct.bio* %83)
  store i8* %84, i8** %16, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %8, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load %struct.pblk*, %struct.pblk** %4, align 8
  %91 = getelementptr inbounds %struct.pblk, %struct.pblk* %90, i32 0, i32 5
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add i32 %92, %93
  %95 = call i32 @pblk_rb_wrap_pos(i32* %91, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load %struct.pblk*, %struct.pblk** %4, align 8
  %97 = getelementptr inbounds %struct.pblk, %struct.pblk* %96, i32 0, i32 5
  %98 = load i8*, i8** %16, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @pblk_rb_write_entry_user(i32* %97, i8* %98, %struct.pblk_w_ctx* byval(%struct.pblk_w_ctx) align 8 %8, i32 %99)
  %101 = load %struct.bio*, %struct.bio** %5, align 8
  %102 = load i32, i32* @PBLK_EXPOSED_PAGE_SIZE, align 4
  %103 = call i32 @bio_advance(%struct.bio* %101, i32 %102)
  br label %104

104:                                              ; preds = %82
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %78

107:                                              ; preds = %78
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.pblk*, %struct.pblk** %4, align 8
  %110 = getelementptr inbounds %struct.pblk, %struct.pblk* %109, i32 0, i32 4
  %111 = call i32 @atomic64_add(i32 %108, i32* %110)
  %112 = load %struct.pblk*, %struct.pblk** %4, align 8
  %113 = getelementptr inbounds %struct.pblk, %struct.pblk* %112, i32 0, i32 1
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @pblk_rl_inserted(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %76, %45
  %117 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %118 = load i32, i32* @REQ_OP_WRITE, align 4
  %119 = load %struct.pblk*, %struct.pblk** %4, align 8
  %120 = getelementptr inbounds %struct.pblk, %struct.pblk* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @generic_end_io_acct(%struct.request_queue* %117, i32 %118, i32* %122, i64 %123)
  %125 = load %struct.pblk*, %struct.pblk** %4, align 8
  %126 = call i32 @pblk_write_should_kick(%struct.pblk* %125)
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @NVM_IO_DONE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load %struct.bio*, %struct.bio** %5, align 8
  %132 = call i32 @bio_endio(%struct.bio* %131)
  br label %133

133:                                              ; preds = %130, %116
  ret void
}

declare dso_local i64 @pblk_get_lba(%struct.bio*) #1

declare dso_local i32 @pblk_get_secs(%struct.bio*) #1

declare dso_local i32 @generic_start_io_acct(%struct.request_queue*, i32, i32, i32*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @pblk_rb_may_write_user(i32*, %struct.bio*, i32, i32*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @pblk_pipeline_stop(%struct.pblk*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @pblk_ppa_set_empty(i32*) #1

declare dso_local i32 @pblk_write_kick(%struct.pblk*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_has_data(%struct.bio*) #1

declare dso_local i8* @bio_data(%struct.bio*) #1

declare dso_local i32 @pblk_rb_wrap_pos(i32*, i32) #1

declare dso_local i32 @pblk_rb_write_entry_user(i32*, i8*, %struct.pblk_w_ctx* byval(%struct.pblk_w_ctx) align 8, i32) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @pblk_rl_inserted(i32*, i32) #1

declare dso_local i32 @generic_end_io_acct(%struct.request_queue*, i32, i32*, i64) #1

declare dso_local i32 @pblk_write_should_kick(%struct.pblk*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
