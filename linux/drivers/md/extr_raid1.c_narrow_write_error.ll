; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_narrow_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_narrow_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, i32, i32, i32, i32, %struct.mddev* }
%struct.mddev = type { i32, %struct.r1conf* }
%struct.r1conf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@R1BIO_BehindIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r1bio*, i32)* @narrow_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @narrow_write_error(%struct.r1bio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.r1conf*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %16 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %15, i32 0, i32 5
  %17 = load %struct.mddev*, %struct.mddev** %16, align 8
  store %struct.mddev* %17, %struct.mddev** %6, align 8
  %18 = load %struct.mddev*, %struct.mddev** %6, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 1
  %20 = load %struct.r1conf*, %struct.r1conf** %19, align 8
  store %struct.r1conf* %20, %struct.r1conf** %7, align 8
  %21 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %22 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.md_rdev*, %struct.md_rdev** %27, align 8
  store %struct.md_rdev* %28, %struct.md_rdev** %8, align 8
  %29 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %30 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %32 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %33 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

38:                                               ; preds = %2
  %39 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %40 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 1, %42
  %44 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %45 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bdev_logical_block_size(i32 %46)
  %48 = ashr i32 %47, 9
  %49 = call i32 @roundup(i32 %43, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %51 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %148, %38
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %158

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* @R1BIO_BehindIO, align 4
  %73 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %74 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %73, i32 0, i32 4
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %79 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GFP_NOIO, align 4
  %82 = load %struct.mddev*, %struct.mddev** %6, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 0
  %84 = call %struct.bio* @bio_clone_fast(i32 %80, i32 %81, i32* %83)
  store %struct.bio* %84, %struct.bio** %14, align 8
  br label %93

85:                                               ; preds = %71
  %86 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %87 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @GFP_NOIO, align 4
  %90 = load %struct.mddev*, %struct.mddev** %6, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 0
  %92 = call %struct.bio* @bio_clone_fast(i32 %88, i32 %89, i32* %91)
  store %struct.bio* %92, %struct.bio** %14, align 8
  br label %93

93:                                               ; preds = %85, %77
  %94 = load %struct.bio*, %struct.bio** %14, align 8
  %95 = load i32, i32* @REQ_OP_WRITE, align 4
  %96 = call i32 @bio_set_op_attrs(%struct.bio* %94, i32 %95, i32 0)
  %97 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %98 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bio*, %struct.bio** %14, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %104 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 9
  %107 = load %struct.bio*, %struct.bio** %14, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.bio*, %struct.bio** %14, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %113 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @bio_trim(%struct.bio* %110, i32 %115, i32 %116)
  %118 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %119 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.bio*, %struct.bio** %14, align 8
  %122 = getelementptr inbounds %struct.bio, %struct.bio* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %120
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load %struct.bio*, %struct.bio** %14, align 8
  %129 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %130 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bio_set_dev(%struct.bio* %128, i32 %131)
  %133 = load %struct.bio*, %struct.bio** %14, align 8
  %134 = call i64 @submit_bio_wait(%struct.bio* %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %93
  %137 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i64 @rdev_set_badblocks(%struct.md_rdev* %137, i32 %138, i32 %139, i32 0)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %142, %136
  %146 = phi i1 [ false, %136 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %145, %93
  %149 = load %struct.bio*, %struct.bio** %14, align 8
  %150 = call i32 @bio_put(%struct.bio* %149)
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %11, align 4
  br label %62

158:                                              ; preds = %62
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %37
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.bio* @bio_clone_fast(i32, i32, i32*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_trim(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @submit_bio_wait(%struct.bio*) #1

declare dso_local i64 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
