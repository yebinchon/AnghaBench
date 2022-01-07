; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_bio_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_bio_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64 }
%struct.dmz_bioctx = type { %struct.dm_zone*, i32 }
%struct.dm_zone = type { i32 }

@BLK_STS_OK = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@DMZ_SEQ_WRITE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i64)* @dmz_bio_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_bio_endio(%struct.bio* %0, i64 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dmz_bioctx*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = call %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio* %7, i32 16)
  store %struct.dmz_bioctx* %8, %struct.dmz_bioctx** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @BLK_STS_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BLK_STS_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %12, %2
  %23 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %5, align 8
  %24 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %23, i32 0, i32 1
  %25 = call i64 @refcount_dec_and_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %22
  %28 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %5, align 8
  %29 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %28, i32 0, i32 0
  %30 = load %struct.dm_zone*, %struct.dm_zone** %29, align 8
  store %struct.dm_zone* %30, %struct.dm_zone** %6, align 8
  %31 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %32 = icmp ne %struct.dm_zone* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BLK_STS_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.bio*, %struct.bio** %3, align 8
  %41 = call i64 @bio_op(%struct.bio* %40)
  %42 = load i64, i64* @REQ_OP_WRITE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %46 = call i64 @dmz_is_seq(%struct.dm_zone* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @DMZ_SEQ_WRITE_ERR, align 4
  %50 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %51 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %44, %39, %33
  %54 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %55 = call i32 @dmz_deactivate_zone(%struct.dm_zone* %54)
  br label %56

56:                                               ; preds = %53, %27
  %57 = load %struct.bio*, %struct.bio** %3, align 8
  %58 = call i32 @bio_endio(%struct.bio* %57)
  br label %59

59:                                               ; preds = %56, %22
  ret void
}

declare dso_local %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @dmz_is_seq(%struct.dm_zone*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dmz_deactivate_zone(%struct.dm_zone*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
