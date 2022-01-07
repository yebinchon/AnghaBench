; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_dmcrypt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_dmcrypt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.crypt_config = type { i32, %struct.rb_root }
%struct.dm_crypt_io = type { i32 }
%struct.blk_plug = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dmcrypt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmcrypt_write(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.dm_crypt_io*, align 8
  %5 = alloca %struct.rb_root, align 4
  %6 = alloca %struct.blk_plug, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.crypt_config*
  store %struct.crypt_config* %8, %struct.crypt_config** %3, align 8
  br label %9

9:                                                ; preds = %1, %66
  %10 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %11 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  br label %13

13:                                               ; preds = %31, %9
  %14 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %15 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %14, i32 0, i32 1
  %16 = call i32 @RB_EMPTY_ROOT(%struct.rb_root* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %38

19:                                               ; preds = %13
  %20 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %21 = call i32 @set_current_state(i32 %20)
  %22 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %23 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = call i32 (...) @kthread_should_stop()
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @TASK_RUNNING, align 4
  %30 = call i32 @set_current_state(i32 %29)
  br label %68

31:                                               ; preds = %19
  %32 = call i32 (...) @schedule()
  %33 = load i32, i32* @TASK_RUNNING, align 4
  %34 = call i32 @set_current_state(i32 %33)
  %35 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %36 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  br label %13

38:                                               ; preds = %18
  %39 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %40 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %39, i32 0, i32 1
  %41 = bitcast %struct.rb_root* %5 to i8*
  %42 = bitcast %struct.rb_root* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %44 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %43, i32 0, i32 1
  %45 = bitcast %struct.rb_root* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  %46 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %47 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rb_parent(i32 %50)
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = call i32 @blk_start_plug(%struct.blk_plug* %6)
  br label %54

54:                                               ; preds = %62, %38
  %55 = call i32 @rb_first(%struct.rb_root* %5)
  %56 = call %struct.dm_crypt_io* @crypt_io_from_node(i32 %55)
  store %struct.dm_crypt_io* %56, %struct.dm_crypt_io** %4, align 8
  %57 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %58 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %57, i32 0, i32 0
  %59 = call i32 @rb_erase(i32* %58, %struct.rb_root* %5)
  %60 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %61 = call i32 @kcryptd_io_write(%struct.dm_crypt_io* %60)
  br label %62

62:                                               ; preds = %54
  %63 = call i32 @RB_EMPTY_ROOT(%struct.rb_root* %5)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %54, label %66

66:                                               ; preds = %62
  %67 = call i32 @blk_finish_plug(%struct.blk_plug* %6)
  br label %9

68:                                               ; preds = %28
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @RB_EMPTY_ROOT(%struct.rb_root*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rb_parent(i32) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local %struct.dm_crypt_io* @crypt_io_from_node(i32) #1

declare dso_local i32 @rb_first(%struct.rb_root*) #1

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

declare dso_local i32 @kcryptd_io_write(%struct.dm_crypt_io*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
