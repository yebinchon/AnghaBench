; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.TYPE_3__*, %struct.pblk_line_meta }
%struct.TYPE_3__ = type { %struct.ppa_addr }
%struct.ppa_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pblk_line_meta = type { i32 }
%struct.pblk_line = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to erase line %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_line_erase(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca %struct.ppa_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 1
  store %struct.pblk_line_meta* %11, %struct.pblk_line_meta** %6, align 8
  store i32 -1, i32* %9, align 4
  br label %12

12:                                               ; preds = %76, %2
  %13 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %14 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %17 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %20 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @find_next_zero_bit(i32 %18, i32 %21, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %27 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  br label %77

34:                                               ; preds = %12
  %35 = load %struct.pblk*, %struct.pblk** %4, align 8
  %36 = getelementptr inbounds %struct.pblk, %struct.pblk* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = bitcast %struct.ppa_addr* %7 to i8*
  %43 = bitcast %struct.ppa_addr* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %45 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %50 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %49, i32 0, i32 3
  %51 = call i32 @atomic_dec(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %54 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @test_and_set_bit(i32 %52, i32 %55)
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %59 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.pblk*, %struct.pblk** %4, align 8
  %62 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pblk_blk_erase_sync(%struct.pblk* %61, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %34
  %69 = load %struct.pblk*, %struct.pblk** %4, align 8
  %70 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %71 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pblk_err(%struct.pblk* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %34
  br label %76

76:                                               ; preds = %75
  br i1 true, label %12, label %77

77:                                               ; preds = %76, %30
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @pblk_blk_erase_sync(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
