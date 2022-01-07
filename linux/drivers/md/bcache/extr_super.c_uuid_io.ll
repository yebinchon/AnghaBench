; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_uuid_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_uuid_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, %struct.uuid_entry*, i32, %struct.closure }
%struct.uuid_entry = type { i32, i32, i32, i32, i32 }
%struct.closure = type { i32 }
%struct.bkey = type { i32 }
%struct.bio = type { i64, %struct.closure*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REQ_SYNC = common dso_local global i64 0, align 8
@REQ_META = common dso_local global i64 0, align 8
@uuid_endio = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s UUIDs at %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"wrote\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Slot %zi: %pU: %s: 1st: %u last: %u inv: %u\00", align 1
@uuid_io_unlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_set*, i32, i64, %struct.bkey*, %struct.closure*)* @uuid_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uuid_io(%struct.cache_set* %0, i32 %1, i64 %2, %struct.bkey* %3, %struct.closure* %4) #0 {
  %6 = alloca %struct.cache_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bkey*, align 8
  %10 = alloca %struct.closure*, align 8
  %11 = alloca %struct.closure*, align 8
  %12 = alloca %struct.uuid_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [80 x i8], align 16
  %15 = alloca %struct.bio*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.bkey* %3, %struct.bkey** %9, align 8
  store %struct.closure* %4, %struct.closure** %10, align 8
  %16 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %17 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %16, i32 0, i32 3
  store %struct.closure* %17, %struct.closure** %11, align 8
  %18 = load %struct.closure*, %struct.closure** %10, align 8
  %19 = icmp ne %struct.closure* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %24 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %23, i32 0, i32 2
  %25 = call i32 @down(i32* %24)
  %26 = load %struct.closure*, %struct.closure** %11, align 8
  %27 = load %struct.closure*, %struct.closure** %10, align 8
  %28 = call i32 @closure_init(%struct.closure* %26, %struct.closure* %27)
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %79, %5
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.bkey*, %struct.bkey** %9, align 8
  %32 = call i32 @KEY_PTRS(%struct.bkey* %31)
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %29
  %35 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %36 = call %struct.bio* @bch_bbio_alloc(%struct.cache_set* %35)
  store %struct.bio* %36, %struct.bio** %15, align 8
  %37 = load i64, i64* @REQ_SYNC, align 8
  %38 = load i64, i64* @REQ_META, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %39, %40
  %42 = load %struct.bio*, %struct.bio** %15, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.bkey*, %struct.bkey** %9, align 8
  %45 = call i32 @KEY_SIZE(%struct.bkey* %44)
  %46 = shl i32 %45, 9
  %47 = load %struct.bio*, %struct.bio** %15, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @uuid_endio, align 4
  %51 = load %struct.bio*, %struct.bio** %15, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.closure*, %struct.closure** %11, align 8
  %54 = load %struct.bio*, %struct.bio** %15, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  store %struct.closure* %53, %struct.closure** %55, align 8
  %56 = load %struct.bio*, %struct.bio** %15, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* @REQ_SYNC, align 8
  %59 = load i64, i64* @REQ_META, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* %8, align 8
  %62 = or i64 %60, %61
  %63 = call i32 @bio_set_op_attrs(%struct.bio* %56, i32 %57, i64 %62)
  %64 = load %struct.bio*, %struct.bio** %15, align 8
  %65 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %66 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %65, i32 0, i32 1
  %67 = load %struct.uuid_entry*, %struct.uuid_entry** %66, align 8
  %68 = call i32 @bch_bio_map(%struct.bio* %64, %struct.uuid_entry* %67)
  %69 = load %struct.bio*, %struct.bio** %15, align 8
  %70 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %71 = load %struct.bkey*, %struct.bkey** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @bch_submit_bbio(%struct.bio* %69, %struct.cache_set* %70, %struct.bkey* %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @REQ_OP_WRITE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %34
  br label %82

78:                                               ; preds = %34
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %29

82:                                               ; preds = %77, %29
  %83 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %84 = load %struct.bkey*, %struct.bkey** %9, align 8
  %85 = call i32 @bch_extent_to_text(i8* %83, i32 80, %struct.bkey* %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @REQ_OP_WRITE, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %90, i8* %91)
  %93 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %94 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %93, i32 0, i32 1
  %95 = load %struct.uuid_entry*, %struct.uuid_entry** %94, align 8
  store %struct.uuid_entry* %95, %struct.uuid_entry** %12, align 8
  br label %96

96:                                               ; preds = %139, %82
  %97 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %98 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %99 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %98, i32 0, i32 1
  %100 = load %struct.uuid_entry*, %struct.uuid_entry** %99, align 8
  %101 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %102 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %100, i64 %104
  %106 = icmp ult %struct.uuid_entry* %97, %105
  br i1 %106, label %107, label %142

107:                                              ; preds = %96
  %108 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %109 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bch_is_zero(i32 %110, i32 16)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %138, label %113

113:                                              ; preds = %107
  %114 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %115 = load %struct.cache_set*, %struct.cache_set** %6, align 8
  %116 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %115, i32 0, i32 1
  %117 = load %struct.uuid_entry*, %struct.uuid_entry** %116, align 8
  %118 = ptrtoint %struct.uuid_entry* %114 to i64
  %119 = ptrtoint %struct.uuid_entry* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 20
  %122 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %123 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %126 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %129 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %132 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %135 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %121, i32 %124, i32 %127, i32 %130, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %113, %107
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.uuid_entry*, %struct.uuid_entry** %12, align 8
  %141 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %140, i32 1
  store %struct.uuid_entry* %141, %struct.uuid_entry** %12, align 8
  br label %96

142:                                              ; preds = %96
  %143 = load %struct.closure*, %struct.closure** %11, align 8
  %144 = load i32, i32* @uuid_io_unlock, align 4
  %145 = call i32 @closure_return_with_destructor(%struct.closure* %143, i32 %144)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @closure_init(%struct.closure*, %struct.closure*) #1

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local %struct.bio* @bch_bbio_alloc(%struct.cache_set*) #1

declare dso_local i32 @KEY_SIZE(%struct.bkey*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i64) #1

declare dso_local i32 @bch_bio_map(%struct.bio*, %struct.uuid_entry*) #1

declare dso_local i32 @bch_submit_bbio(%struct.bio*, %struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i32 @bch_extent_to_text(i8*, i32, %struct.bkey*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @bch_is_zero(i32, i32) #1

declare dso_local i32 @closure_return_with_destructor(%struct.closure*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
