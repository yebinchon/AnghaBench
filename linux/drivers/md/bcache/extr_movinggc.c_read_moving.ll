; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_movinggc.c_read_moving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_movinggc.c_read_moving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, i32, i32, i32 }
%struct.keybuf_key = type { %struct.moving_io*, i32 }
%struct.moving_io = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.keybuf_key* }
%struct.TYPE_4__ = type { %struct.bio }
%struct.bio = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.cache_set*, i32 }
%struct.closure = type { i32 }

@CACHE_SET_STOPPING = common dso_local global i32 0, align 4
@MAX_KEY = common dso_local global i32 0, align 4
@moving_pred = common dso_local global i32 0, align 4
@PAGE_SECTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@read_moving_endio = common dso_local global i32 0, align 4
@read_moving_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_set*)* @read_moving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_moving(%struct.cache_set* %0) #0 {
  %2 = alloca %struct.cache_set*, align 8
  %3 = alloca %struct.keybuf_key*, align 8
  %4 = alloca %struct.moving_io*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.closure, align 4
  store %struct.cache_set* %0, %struct.cache_set** %2, align 8
  %7 = call i32 @closure_init_stack(%struct.closure* %6)
  br label %8

8:                                                ; preds = %89, %30, %1
  %9 = load i32, i32* @CACHE_SET_STOPPING, align 4
  %10 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %11 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %10, i32 0, i32 3
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %100

15:                                               ; preds = %8
  %16 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %17 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %18 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %17, i32 0, i32 0
  %19 = load i32, i32* @moving_pred, align 4
  %20 = call %struct.keybuf_key* @bch_keybuf_next_rescan(%struct.cache_set* %16, i32* %18, i32* @MAX_KEY, i32 %19)
  store %struct.keybuf_key* %20, %struct.keybuf_key** %3, align 8
  %21 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %22 = icmp ne %struct.keybuf_key* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %100

24:                                               ; preds = %15
  %25 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %26 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %27 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %26, i32 0, i32 1
  %28 = call i64 @ptr_stale(%struct.cache_set* %25, i32* %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %32 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %31, i32 0, i32 0
  %33 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %34 = call i32 @bch_keybuf_del(i32* %32, %struct.keybuf_key* %33)
  br label %8

35:                                               ; preds = %24
  %36 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %37 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %36, i32 0, i32 1
  %38 = call i32 @KEY_SIZE(i32* %37)
  %39 = load i32, i32* @PAGE_SECTORS, align 4
  %40 = call i32 @DIV_ROUND_UP(i32 %38, i32 %39)
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = add i64 40, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.moving_io* @kzalloc(i32 %44, i32 %45)
  store %struct.moving_io* %46, %struct.moving_io** %4, align 8
  %47 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %48 = icmp ne %struct.moving_io* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %102

50:                                               ; preds = %35
  %51 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %52 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %53 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %52, i32 0, i32 0
  store %struct.moving_io* %51, %struct.moving_io** %53, align 8
  %54 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %55 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %56 = getelementptr inbounds %struct.moving_io, %struct.moving_io* %55, i32 0, i32 3
  store %struct.keybuf_key* %54, %struct.keybuf_key** %56, align 8
  %57 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %58 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %57, i32 0, i32 1
  %59 = call i32 @KEY_INODE(i32* %58)
  %60 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %61 = getelementptr inbounds %struct.moving_io, %struct.moving_io* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %64 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %65 = getelementptr inbounds %struct.moving_io, %struct.moving_io* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store %struct.cache_set* %63, %struct.cache_set** %66, align 8
  %67 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %68 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %71 = getelementptr inbounds %struct.moving_io, %struct.moving_io* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %74 = call i32 @moving_init(%struct.moving_io* %73)
  %75 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %76 = getelementptr inbounds %struct.moving_io, %struct.moving_io* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store %struct.bio* %77, %struct.bio** %5, align 8
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = load i32, i32* @REQ_OP_READ, align 4
  %80 = call i32 @bio_set_op_attrs(%struct.bio* %78, i32 %79, i32 0)
  %81 = load i32, i32* @read_moving_endio, align 4
  %82 = load %struct.bio*, %struct.bio** %5, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bio*, %struct.bio** %5, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i64 @bch_bio_alloc_pages(%struct.bio* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %50
  br label %102

89:                                               ; preds = %50
  %90 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %91 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %90, i32 0, i32 1
  %92 = call i32 @trace_bcache_gc_copy(i32* %91)
  %93 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %94 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %93, i32 0, i32 1
  %95 = call i32 @down(i32* %94)
  %96 = load %struct.moving_io*, %struct.moving_io** %4, align 8
  %97 = getelementptr inbounds %struct.moving_io, %struct.moving_io* %96, i32 0, i32 0
  %98 = load i32, i32* @read_moving_submit, align 4
  %99 = call i32 @closure_call(i32* %97, i32 %98, i32* null, %struct.closure* %6)
  br label %8

100:                                              ; preds = %23, %8
  br i1 false, label %101, label %118

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %88, %49
  %103 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %104 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %103, i32 0, i32 0
  %105 = load %struct.moving_io*, %struct.moving_io** %104, align 8
  %106 = call i32 @IS_ERR_OR_NULL(%struct.moving_io* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %110 = getelementptr inbounds %struct.keybuf_key, %struct.keybuf_key* %109, i32 0, i32 0
  %111 = load %struct.moving_io*, %struct.moving_io** %110, align 8
  %112 = call i32 @kfree(%struct.moving_io* %111)
  br label %113

113:                                              ; preds = %108, %102
  %114 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %115 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %114, i32 0, i32 0
  %116 = load %struct.keybuf_key*, %struct.keybuf_key** %3, align 8
  %117 = call i32 @bch_keybuf_del(i32* %115, %struct.keybuf_key* %116)
  br label %118

118:                                              ; preds = %113, %100
  %119 = call i32 @closure_sync(%struct.closure* %6)
  ret void
}

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.keybuf_key* @bch_keybuf_next_rescan(%struct.cache_set*, i32*, i32*, i32) #1

declare dso_local i64 @ptr_stale(%struct.cache_set*, i32*, i32) #1

declare dso_local i32 @bch_keybuf_del(i32*, %struct.keybuf_key*) #1

declare dso_local %struct.moving_io* @kzalloc(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @KEY_SIZE(i32*) #1

declare dso_local i32 @KEY_INODE(i32*) #1

declare dso_local i32 @moving_init(%struct.moving_io*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i64 @bch_bio_alloc_pages(%struct.bio*, i32) #1

declare dso_local i32 @trace_bcache_gc_copy(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @closure_call(i32*, i32, i32*, %struct.closure*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.moving_io*) #1

declare dso_local i32 @kfree(%struct.moving_io*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
