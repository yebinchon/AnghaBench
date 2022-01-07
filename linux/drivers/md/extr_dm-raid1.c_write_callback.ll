; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_write_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.mirror_set = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mirror_set* }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@BLK_STS_NOTSUPP = common dso_local global i32 0, align 4
@DM_RAID1_WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_callback(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.mirror_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bio*
  store %struct.bio* %11, %struct.bio** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.bio*, %struct.bio** %6, align 8
  %13 = call %struct.TYPE_4__* @bio_get_m(%struct.bio* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  store %struct.mirror_set* %15, %struct.mirror_set** %7, align 8
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i32 @bio_set_m(%struct.bio* %16, i32* null)
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = call i32 @bio_endio(%struct.bio* %25)
  br label %87

27:                                               ; preds = %2
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = call i64 @bio_op(%struct.bio* %28)
  %30 = load i64, i64* @REQ_OP_DISCARD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @BLK_STS_NOTSUPP, align 4
  %34 = load %struct.bio*, %struct.bio** %6, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = call i32 @bio_endio(%struct.bio* %36)
  br label %87

38:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %42 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @test_bit(i32 %46, i64* %3)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %51 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* @DM_RAID1_WRITE_ERROR, align 4
  %57 = call i32 @fail_mirror(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %64 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %63, i32 0, i32 1
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %68 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %62
  %74 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %75 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %74, i32 0, i32 2
  %76 = load %struct.bio*, %struct.bio** %6, align 8
  %77 = call i32 @bio_list_add(%struct.TYPE_3__* %75, %struct.bio* %76)
  %78 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %79 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %78, i32 0, i32 1
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %86 = call i32 @wakeup_mirrord(%struct.mirror_set* %85)
  br label %87

87:                                               ; preds = %24, %32, %84, %73
  ret void
}

declare dso_local %struct.TYPE_4__* @bio_get_m(%struct.bio*) #1

declare dso_local i32 @bio_set_m(%struct.bio*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @fail_mirror(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(%struct.TYPE_3__*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wakeup_mirrord(%struct.mirror_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
