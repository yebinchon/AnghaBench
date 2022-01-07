; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_read_dirty_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_read_dirty_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.keybuf_key* }
%struct.keybuf_key = type { i32, %struct.dirty_io* }
%struct.dirty_io = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"reading dirty data from cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @read_dirty_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dirty_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.keybuf_key*, align 8
  %4 = alloca %struct.dirty_io*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.keybuf_key*, %struct.keybuf_key** %6, align 8
  store %struct.keybuf_key* %7, %struct.keybuf_key** %3, align 8
  %8 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %9 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %8, i32 0, i32 1
  %10 = load %struct.dirty_io*, %struct.dirty_io** %9, align 8
  store %struct.dirty_io* %10, %struct.dirty_io** %4, align 8
  %11 = load %struct.dirty_io*, %struct.dirty_io** %4, align 8
  %12 = getelementptr inbounds %struct.dirty_io, %struct.dirty_io* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %18 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %17, i32 0, i32 0
  %19 = call i32 @PTR_CACHE(i32 %16, i32* %18, i32 0)
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bch_count_io_errors(i32 %19, i32 %22, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = call i32 @dirty_endio(%struct.bio* %24)
  ret void
}

declare dso_local i32 @bch_count_io_errors(i32, i32, i32, i8*) #1

declare dso_local i32 @PTR_CACHE(i32, i32*, i32) #1

declare dso_local i32 @dirty_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
