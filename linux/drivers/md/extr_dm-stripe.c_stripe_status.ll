; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.stripe_c = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"1 \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%d %llu\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" %s %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @stripe_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.stripe_c*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.stripe_c*
  store %struct.stripe_c* %17, %struct.stripe_c** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %108 [
    i32 129, label %19
    i32 128, label %70
  ]

19:                                               ; preds = %5
  %20 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %21 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %42, %19
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %27 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %32 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %24

45:                                               ; preds = %24
  %46 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %66, %45
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %50 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %55 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = call i32 @atomic_read(i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 68, i32 65
  %65 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %47

69:                                               ; preds = %47
  br label %108

70:                                               ; preds = %5
  %71 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %72 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %75 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %73, i64 %76)
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %104, %70
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %81 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %86 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.stripe_c*, %struct.stripe_c** %11, align 8
  %96 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %94, i64 %102)
  br label %104

104:                                              ; preds = %84
  %105 = load i32, i32* %13, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %78

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %5, %107, %69
  ret void
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
