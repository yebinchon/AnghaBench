; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_init_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_init_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, i64, i32, i64, i64, %struct.r5dev*, i64, i32, %struct.r5conf* }
%struct.r5dev = type { i32, i64, i64, i64, i64, i64 }
%struct.r5conf = type { i32, i32, i32, i64 }

@STRIPE_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"init_stripe called, stripe %llu\0A\00", align 1
@R5_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"sector=%llx i=%d %p %p %p %p %d\0A\00", align 1
@STRIPE_BATCH_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, i64, i32)* @init_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_stripe(%struct.stripe_head* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r5conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %12 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %11, i32 0, i32 9
  %13 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  store %struct.r5conf* %13, %struct.r5conf** %7, align 8
  %14 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 8
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @STRIPE_HANDLE, align 4
  %21 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %22 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 2
  %23 = call i32 @test_bit(i32 %20, i64* %22)
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %26 = call i32 @stripe_operations_active(%struct.stripe_head* %25)
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %29 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %147, %3
  %35 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 2
  %37 = call i32 @read_seqcount_begin(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %39 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %45 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %44, i32 0, i32 7
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  br label %56

52:                                               ; preds = %34
  %53 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %54 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ]
  %58 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %59 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %62 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %67 = call i32 @stripe_set_idx(i64 %63, %struct.r5conf* %64, i32 %65, %struct.stripe_head* %66)
  %68 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %69 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %71 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %132, %56
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %141

77:                                               ; preds = %73
  %78 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %79 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %78, i32 0, i32 6
  %80 = load %struct.r5dev*, %struct.r5dev** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %80, i64 %82
  store %struct.r5dev* %83, %struct.r5dev** %10, align 8
  %84 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %85 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %77
  %89 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %90 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %88
  %94 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %95 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %100 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @R5_LOCKED, align 4
  %105 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %106 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %105, i32 0, i32 1
  %107 = call i32 @test_bit(i32 %104, i64* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %103, %98, %93, %88, %77
  %110 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %111 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %115 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %118 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %121 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %124 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @R5_LOCKED, align 4
  %127 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %128 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %127, i32 0, i32 1
  %129 = call i32 @test_bit(i32 %126, i64* %128)
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %112, i32 %113, i64 %116, i64 %119, i64 %122, i64 %125, i32 %129)
  %131 = call i32 @WARN_ON(i32 1)
  br label %132

132:                                              ; preds = %109, %103
  %133 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %134 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @raid5_compute_blocknr(%struct.stripe_head* %135, i32 %136, i32 %137)
  %139 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %140 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %73

141:                                              ; preds = %73
  %142 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %143 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %142, i32 0, i32 2
  %144 = load i32, i32* %9, align 4
  %145 = call i64 @read_seqcount_retry(i32* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %34

148:                                              ; preds = %141
  %149 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %150 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %149, i32 0, i32 4
  store i64 0, i64* %150, align 8
  %151 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %152 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %153 = call i32 @insert_hash(%struct.r5conf* %151, %struct.stripe_head* %152)
  %154 = call i32 (...) @smp_processor_id()
  %155 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %156 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @STRIPE_BATCH_READY, align 4
  %158 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %159 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %158, i32 0, i32 2
  %160 = call i32 @set_bit(i32 %157, i64* %159)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @stripe_operations_active(%struct.stripe_head*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @stripe_set_idx(i64, %struct.r5conf*, i32, %struct.stripe_head*) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @raid5_compute_blocknr(%struct.stripe_head*, i32, i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @insert_hash(%struct.r5conf*, %struct.stripe_head*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
