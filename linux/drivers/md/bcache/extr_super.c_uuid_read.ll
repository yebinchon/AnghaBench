; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_uuid_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_uuid_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, i64, i32 }
%struct.jset = type { i64, %struct.bkey }
%struct.bkey = type { i32 }
%struct.closure = type { i32 }
%struct.uuid_entry_v0 = type { i32, i32, i32, i32, i32 }
%struct.uuid_entry = type { i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad uuid pointer\00", align 1
@REQ_OP_READ = common dso_local global i32 0, align 4
@BCACHE_JSET_VERSION_UUIDv1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cache_set*, %struct.jset*, %struct.closure*)* @uuid_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uuid_read(%struct.cache_set* %0, %struct.jset* %1, %struct.closure* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cache_set*, align 8
  %6 = alloca %struct.jset*, align 8
  %7 = alloca %struct.closure*, align 8
  %8 = alloca %struct.bkey*, align 8
  %9 = alloca %struct.uuid_entry_v0*, align 8
  %10 = alloca %struct.uuid_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %5, align 8
  store %struct.jset* %1, %struct.jset** %6, align 8
  store %struct.closure* %2, %struct.closure** %7, align 8
  %12 = load %struct.jset*, %struct.jset** %6, align 8
  %13 = getelementptr inbounds %struct.jset, %struct.jset* %12, i32 0, i32 1
  store %struct.bkey* %13, %struct.bkey** %8, align 8
  %14 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %15 = load %struct.bkey*, %struct.bkey** %8, align 8
  %16 = call i64 @__bch_btree_ptr_invalid(%struct.cache_set* %14, %struct.bkey* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %129

19:                                               ; preds = %3
  %20 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %21 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %20, i32 0, i32 2
  %22 = load %struct.bkey*, %struct.bkey** %8, align 8
  %23 = call i32 @bkey_copy(i32* %21, %struct.bkey* %22)
  %24 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %25 = load i32, i32* @REQ_OP_READ, align 4
  %26 = load %struct.bkey*, %struct.bkey** %8, align 8
  %27 = load %struct.closure*, %struct.closure** %7, align 8
  %28 = call i32 @uuid_io(%struct.cache_set* %24, i32 %25, i32 0, %struct.bkey* %26, %struct.closure* %27)
  %29 = load %struct.jset*, %struct.jset** %6, align 8
  %30 = getelementptr inbounds %struct.jset, %struct.jset* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BCACHE_JSET_VERSION_UUIDv1, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %128

34:                                               ; preds = %19
  %35 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %36 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.uuid_entry_v0*
  store %struct.uuid_entry_v0* %39, %struct.uuid_entry_v0** %9, align 8
  %40 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %41 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.uuid_entry*
  store %struct.uuid_entry* %44, %struct.uuid_entry** %10, align 8
  %45 = load %struct.closure*, %struct.closure** %7, align 8
  %46 = call i32 @closure_sync(%struct.closure* %45)
  %47 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %48 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %124, %34
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %127

54:                                               ; preds = %51
  %55 = load %struct.uuid_entry*, %struct.uuid_entry** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %55, i64 %57
  %59 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.uuid_entry_v0*, %struct.uuid_entry_v0** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %61, i64 %63
  %65 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %60, i32 %66, i32 16)
  %68 = load %struct.uuid_entry*, %struct.uuid_entry** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %68, i64 %70
  %72 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.uuid_entry_v0*, %struct.uuid_entry_v0** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %74, i64 %76
  %78 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memcpy(i32 %73, i32 %79, i32 32)
  %81 = load %struct.uuid_entry_v0*, %struct.uuid_entry_v0** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %81, i64 %83
  %85 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.uuid_entry*, %struct.uuid_entry** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %87, i64 %89
  %91 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %90, i32 0, i32 4
  store i32 %86, i32* %91, align 8
  %92 = load %struct.uuid_entry_v0*, %struct.uuid_entry_v0** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %92, i64 %94
  %96 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.uuid_entry*, %struct.uuid_entry** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %98, i64 %100
  %102 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %101, i32 0, i32 3
  store i32 %97, i32* %102, align 4
  %103 = load %struct.uuid_entry_v0*, %struct.uuid_entry_v0** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %103, i64 %105
  %107 = getelementptr inbounds %struct.uuid_entry_v0, %struct.uuid_entry_v0* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.uuid_entry*, %struct.uuid_entry** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %109, i64 %111
  %113 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %112, i32 0, i32 2
  store i32 %108, i32* %113, align 8
  %114 = load %struct.uuid_entry*, %struct.uuid_entry** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %114, i64 %116
  %118 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.uuid_entry*, %struct.uuid_entry** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %119, i64 %121
  %123 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %54
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %11, align 4
  br label %51

127:                                              ; preds = %51
  br label %128

128:                                              ; preds = %127, %19
  store i8* null, i8** %4, align 8
  br label %129

129:                                              ; preds = %128, %18
  %130 = load i8*, i8** %4, align 8
  ret i8* %130
}

declare dso_local i64 @__bch_btree_ptr_invalid(%struct.cache_set*, %struct.bkey*) #1

declare dso_local i32 @bkey_copy(i32*, %struct.bkey*) #1

declare dso_local i32 @uuid_io(%struct.cache_set*, i32, i32, %struct.bkey*, %struct.closure*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
