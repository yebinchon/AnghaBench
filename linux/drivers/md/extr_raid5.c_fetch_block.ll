; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_fetch_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_fetch_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64, i32, %struct.TYPE_2__, %struct.r5dev*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.r5dev = type { i32 }
%struct.stripe_head_state = type { i32, i32, i32*, i32, i32, i32, i32 }

@R5_Wantcompute = common dso_local global i32 0, align 4
@R5_Wantread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Computing stripe %llu block %d\0A\00", align 1
@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@STRIPE_OP_COMPUTE_BLK = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Computing stripe %llu blocks %d,%d\0A\00", align 1
@R5_Insync = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Reading block %d (sync=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, %struct.stripe_head_state*, i32, i32)* @fetch_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_block(%struct.stripe_head* %0, %struct.stripe_head_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca %struct.stripe_head_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5dev*, align 8
  %11 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %6, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %13 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %12, i32 0, i32 4
  %14 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %14, i64 %16
  store %struct.r5dev* %17, %struct.r5dev** %10, align 8
  %18 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %19 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @need_this_block(%struct.stripe_head* %18, %struct.stripe_head_state* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %224

24:                                               ; preds = %4
  %25 = load i32, i32* @R5_Wantcompute, align 4
  %26 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %27 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %26, i32 0, i32 0
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* @R5_Wantread, align 4
  %31 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %32 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %31, i32 0, i32 0
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %40 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %109

45:                                               ; preds = %24
  %46 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %47 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %52 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %77, label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %58 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %64 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %72 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %70, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %69, %61, %50
  %78 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %79 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %85 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %86 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %85, i32 0, i32 5
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  %88 = load i32, i32* @STRIPE_OP_COMPUTE_BLK, align 4
  %89 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %90 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %89, i32 0, i32 6
  %91 = call i32 @set_bit(i32 %88, i32* %90)
  %92 = load i32, i32* @R5_Wantcompute, align 4
  %93 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %94 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %93, i32 0, i32 0
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %98 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %101 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 -1, i32* %102, align 4
  %103 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %104 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %103, i32 0, i32 3
  store i32 1, i32* %104, align 8
  %105 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %106 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  store i32 1, i32* %5, align 4
  br label %225

109:                                              ; preds = %69, %56, %24
  %110 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %111 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %113, 2
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %197

116:                                              ; preds = %109
  %117 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %118 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %119, 2
  br i1 %120, label %121, label %197

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %144, %131, %121
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %11, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %123
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %123

132:                                              ; preds = %127
  %133 = load i32, i32* @R5_UPTODATE, align 4
  %134 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %135 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %134, i32 0, i32 4
  %136 = load %struct.r5dev*, %struct.r5dev** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %136, i64 %138
  %140 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %139, i32 0, i32 0
  %141 = call i32 @test_bit(i32 %133, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %132
  br label %145

144:                                              ; preds = %132
  br label %123

145:                                              ; preds = %143, %123
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @BUG_ON(i32 %148)
  %150 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %151 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %158 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %159 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %158, i32 0, i32 5
  %160 = call i32 @set_bit(i32 %157, i32* %159)
  %161 = load i32, i32* @STRIPE_OP_COMPUTE_BLK, align 4
  %162 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %163 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %162, i32 0, i32 6
  %164 = call i32 @set_bit(i32 %161, i32* %163)
  %165 = load i32, i32* @R5_Wantcompute, align 4
  %166 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %167 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %166, i32 0, i32 4
  %168 = load %struct.r5dev*, %struct.r5dev** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %168, i64 %170
  %172 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %171, i32 0, i32 0
  %173 = call i32 @set_bit(i32 %165, i32* %172)
  %174 = load i32, i32* @R5_Wantcompute, align 4
  %175 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %176 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %175, i32 0, i32 4
  %177 = load %struct.r5dev*, %struct.r5dev** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %177, i64 %179
  %181 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %180, i32 0, i32 0
  %182 = call i32 @set_bit(i32 %174, i32* %181)
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %185 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %189 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %192 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %192, align 8
  %195 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %196 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %195, i32 0, i32 3
  store i32 1, i32* %196, align 8
  store i32 1, i32* %5, align 4
  br label %225

197:                                              ; preds = %116, %109
  %198 = load i32, i32* @R5_Insync, align 4
  %199 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %200 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %199, i32 0, i32 0
  %201 = call i32 @test_bit(i32 %198, i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %197
  %204 = load i32, i32* @R5_LOCKED, align 4
  %205 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %206 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %205, i32 0, i32 0
  %207 = call i32 @set_bit(i32 %204, i32* %206)
  %208 = load i32, i32* @R5_Wantread, align 4
  %209 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %210 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %209, i32 0, i32 0
  %211 = call i32 @set_bit(i32 %208, i32* %210)
  %212 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %213 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %218 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %203, %197
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %4
  store i32 0, i32* %5, align 4
  br label %225

225:                                              ; preds = %224, %145, %77
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i64 @need_this_block(%struct.stripe_head*, %struct.stripe_head_state*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
