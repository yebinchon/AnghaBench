; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_prio_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_prio_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.closure, i32, i32, i32, %struct.TYPE_3__ }
%struct.closure = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { %struct.cache*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@prio_endio = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i64 0, align 8
@REQ_META = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i32, i32, i64)* @prio_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prio_io(%struct.cache* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.closure*, align 8
  %10 = alloca %struct.bio*, align 8
  store %struct.cache* %0, %struct.cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.cache*, %struct.cache** %5, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 0
  store %struct.closure* %12, %struct.closure** %9, align 8
  %13 = load %struct.cache*, %struct.cache** %5, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bio* @bch_bbio_alloc(i32 %15)
  store %struct.bio* %16, %struct.bio** %10, align 8
  %17 = load %struct.closure*, %struct.closure** %9, align 8
  %18 = call i32 @closure_init_stack(%struct.closure* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cache*, %struct.cache** %5, align 8
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = load %struct.bio*, %struct.bio** %10, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.bio*, %struct.bio** %10, align 8
  %29 = load %struct.cache*, %struct.cache** %5, align 8
  %30 = getelementptr inbounds %struct.cache, %struct.cache* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bio_set_dev(%struct.bio* %28, i32 %31)
  %33 = load %struct.cache*, %struct.cache** %5, align 8
  %34 = call i32 @bucket_bytes(%struct.cache* %33)
  %35 = load %struct.bio*, %struct.bio** %10, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @prio_endio, align 4
  %39 = load %struct.bio*, %struct.bio** %10, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cache*, %struct.cache** %5, align 8
  %42 = load %struct.bio*, %struct.bio** %10, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  store %struct.cache* %41, %struct.cache** %43, align 8
  %44 = load %struct.bio*, %struct.bio** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* @REQ_SYNC, align 8
  %47 = load i64, i64* @REQ_META, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* %8, align 8
  %50 = or i64 %48, %49
  %51 = call i32 @bio_set_op_attrs(%struct.bio* %44, i32 %45, i64 %50)
  %52 = load %struct.bio*, %struct.bio** %10, align 8
  %53 = load %struct.cache*, %struct.cache** %5, align 8
  %54 = getelementptr inbounds %struct.cache, %struct.cache* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bch_bio_map(%struct.bio* %52, i32 %55)
  %57 = load %struct.cache*, %struct.cache** %5, align 8
  %58 = getelementptr inbounds %struct.cache, %struct.cache* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bio*, %struct.bio** %10, align 8
  %61 = load %struct.cache*, %struct.cache** %5, align 8
  %62 = getelementptr inbounds %struct.cache, %struct.cache* %61, i32 0, i32 0
  %63 = call i32 @closure_bio_submit(i32 %59, %struct.bio* %60, %struct.closure* %62)
  %64 = load %struct.closure*, %struct.closure** %9, align 8
  %65 = call i32 @closure_sync(%struct.closure* %64)
  ret void
}

declare dso_local %struct.bio* @bch_bbio_alloc(i32) #1

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bucket_bytes(%struct.cache*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i64) #1

declare dso_local i32 @bch_bio_map(%struct.bio*, i32) #1

declare dso_local i32 @closure_bio_submit(i32, %struct.bio*, %struct.closure*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
