; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_io_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_io_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i64, i32, %struct.TYPE_8__, i32, %struct.crypt_config* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.bio* }
%struct.TYPE_7__ = type { i32 }
%struct.bio = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.crypt_config = type { i64, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.TYPE_11__ = type { i64 }

@DM_CRYPT_NO_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*, i32)* @kcryptd_crypt_write_io_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_crypt_write_io_submit(%struct.dm_crypt_io* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_crypt_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rb_node**, align 8
  %10 = alloca %struct.rb_node*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %12 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %14, %struct.bio** %5, align 8
  %15 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %16 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %15, i32 0, i32 4
  %17 = load %struct.crypt_config*, %struct.crypt_config** %16, align 8
  store %struct.crypt_config* %17, %struct.crypt_config** %6, align 8
  %18 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %19 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @crypt_free_buffer_pages(%struct.crypt_config* %24, %struct.bio* %25)
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = call i32 @bio_put(%struct.bio* %27)
  %29 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %30 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %29)
  br label %121

31:                                               ; preds = %2
  %32 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %33 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %39 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %42 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %31
  %55 = load i32, i32* @DM_CRYPT_NO_OFFLOAD, align 4
  %56 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %57 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %56, i32 0, i32 4
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = call i32 @generic_make_request(%struct.bio* %61)
  br label %121

63:                                               ; preds = %54, %31
  %64 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %65 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %64, i32 0, i32 1
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %69 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %68, i32 0, i32 2
  %70 = call i64 @RB_EMPTY_ROOT(%struct.TYPE_10__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %74 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @wake_up_process(i32 %75)
  br label %77

77:                                               ; preds = %72, %63
  %78 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %79 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store %struct.rb_node** %80, %struct.rb_node*** %9, align 8
  store %struct.rb_node* null, %struct.rb_node** %10, align 8
  %81 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %82 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %105, %77
  %85 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %86 = load %struct.rb_node*, %struct.rb_node** %85, align 8
  %87 = icmp ne %struct.rb_node* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %90 = load %struct.rb_node*, %struct.rb_node** %89, align 8
  store %struct.rb_node* %90, %struct.rb_node** %10, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %93 = call %struct.TYPE_11__* @crypt_io_from_node(%struct.rb_node* %92)
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %91, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %99 = load %struct.rb_node*, %struct.rb_node** %98, align 8
  %100 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %99, i32 0, i32 1
  store %struct.rb_node** %100, %struct.rb_node*** %9, align 8
  br label %105

101:                                              ; preds = %88
  %102 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %103 = load %struct.rb_node*, %struct.rb_node** %102, align 8
  %104 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %103, i32 0, i32 0
  store %struct.rb_node** %104, %struct.rb_node*** %9, align 8
  br label %105

105:                                              ; preds = %101, %97
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %108 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %107, i32 0, i32 1
  %109 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %110 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %111 = call i32 @rb_link_node(i32* %108, %struct.rb_node* %109, %struct.rb_node** %110)
  %112 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %113 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %112, i32 0, i32 1
  %114 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %115 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %114, i32 0, i32 2
  %116 = call i32 @rb_insert_color(i32* %113, %struct.TYPE_10__* %115)
  %117 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %118 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %117, i32 0, i32 1
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %106, %60, %23
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypt_free_buffer_pages(%struct.crypt_config*, %struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @RB_EMPTY_ROOT(%struct.TYPE_10__*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local %struct.TYPE_11__* @crypt_io_from_node(%struct.rb_node*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
