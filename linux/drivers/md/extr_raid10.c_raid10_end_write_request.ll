; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_end_write_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_end_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, %struct.r10bio* }
%struct.r10bio = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32*, i8*, i32 }
%struct.TYPE_5__ = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@R10BIO_WriteError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@R10BIO_Uptodate = common dso_local global i32 0, align 4
@IO_MADE_GOOD = common dso_local global i8* null, align 8
@R10BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid10_end_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_end_write_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.r10bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 2
  %16 = load %struct.r10bio*, %struct.r10bio** %15, align 8
  store %struct.r10bio* %16, %struct.r10bio** %3, align 8
  store i32 1, i32* %5, align 4
  %17 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %18 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.r10conf*, %struct.r10conf** %20, align 8
  store %struct.r10conf* %21, %struct.r10conf** %6, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %9, align 8
  store %struct.bio* null, %struct.bio** %10, align 8
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = call i64 @bio_op(%struct.bio* %27)
  %29 = load i64, i64* @REQ_OP_DISCARD, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %26, %1
  %32 = phi i1 [ false, %1 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %35 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = call i32 @find_bio_disk(%struct.r10conf* %34, %struct.r10bio* %35, %struct.bio* %36, i32* %7, i32* %8)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %42 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.md_rdev*, %struct.md_rdev** %47, align 8
  store %struct.md_rdev* %48, %struct.md_rdev** %9, align 8
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %51 = icmp ne %struct.md_rdev* %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = call i32 (...) @smp_rmb()
  store i32 0, i32* %8, align 4
  %54 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %55 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.md_rdev*, %struct.md_rdev** %60, align 8
  store %struct.md_rdev* %61, %struct.md_rdev** %9, align 8
  br label %62

62:                                               ; preds = %52, %49
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %137

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %137, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %78 = call i32 @md_error(%struct.TYPE_8__* %76, %struct.md_rdev* %77)
  br label %136

79:                                               ; preds = %70
  %80 = load i32, i32* @WriteErrorSeen, align 4
  %81 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %82 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load i32, i32* @WantReplacement, align 4
  %85 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %86 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %85, i32 0, i32 0
  %87 = call i32 @test_and_set_bit(i32 %84, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %91 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %92 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @set_bit(i32 %90, i32* %94)
  br label %96

96:                                               ; preds = %89, %79
  store i32 0, i32* %5, align 4
  %97 = load i32, i32* @FailFast, align 4
  %98 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %99 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %98, i32 0, i32 0
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load %struct.bio*, %struct.bio** %2, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MD_FAILFAST, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %111 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %114 = call i32 @md_error(%struct.TYPE_8__* %112, %struct.md_rdev* %113)
  br label %115

115:                                              ; preds = %109, %102, %96
  %116 = load i32, i32* @Faulty, align 4
  %117 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %118 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %117, i32 0, i32 0
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* @R10BIO_WriteError, align 4
  %123 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %124 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %123, i32 0, i32 0
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  br label %135

126:                                              ; preds = %115
  %127 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %128 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  %134 = load %struct.bio*, %struct.bio** %2, align 8
  store %struct.bio* %134, %struct.bio** %10, align 8
  store i32 1, i32* %5, align 4
  br label %135

135:                                              ; preds = %126, %121
  br label %136

136:                                              ; preds = %135, %73
  br label %202

137:                                              ; preds = %67, %62
  %138 = load i32, i32* @In_sync, align 4
  %139 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %140 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %139, i32 0, i32 0
  %141 = call i64 @test_bit(i32 %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load i32, i32* @Faulty, align 4
  %145 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %146 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %145, i32 0, i32 0
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @R10BIO_Uptodate, align 4
  %151 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %152 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %151, i32 0, i32 0
  %153 = call i32 @set_bit(i32 %150, i32* %152)
  br label %154

154:                                              ; preds = %149, %143, %137
  %155 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %156 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %157 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %156, i32 0, i32 1
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %165 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @is_badblock(%struct.md_rdev* %155, i32 %163, i32 %166, i32* %12, i32* %13)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %201

169:                                              ; preds = %154
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %201, label %172

172:                                              ; preds = %169
  %173 = load %struct.bio*, %struct.bio** %2, align 8
  %174 = call i32 @bio_put(%struct.bio* %173)
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load i8*, i8** @IO_MADE_GOOD, align 8
  %179 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %180 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %179, i32 0, i32 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  store i8* %178, i8** %185, align 8
  br label %196

186:                                              ; preds = %172
  %187 = load i8*, i8** @IO_MADE_GOOD, align 8
  %188 = bitcast i8* %187 to i32*
  %189 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %190 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %189, i32 0, i32 1
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  store i32* %188, i32** %195, align 8
  br label %196

196:                                              ; preds = %186, %177
  store i32 0, i32* %5, align 4
  %197 = load i32, i32* @R10BIO_MadeGood, align 4
  %198 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %199 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %198, i32 0, i32 0
  %200 = call i32 @set_bit(i32 %197, i32* %199)
  br label %201

201:                                              ; preds = %196, %169, %154
  br label %202

202:                                              ; preds = %201, %136
  %203 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %204 = call i32 @one_write_done(%struct.r10bio* %203)
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %209 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %210 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @rdev_dec_pending(%struct.md_rdev* %208, i32 %211)
  br label %213

213:                                              ; preds = %207, %202
  %214 = load %struct.bio*, %struct.bio** %10, align 8
  %215 = icmp ne %struct.bio* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.bio*, %struct.bio** %10, align 8
  %218 = call i32 @bio_put(%struct.bio* %217)
  br label %219

219:                                              ; preds = %216, %213
  ret void
}

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @find_bio_disk(%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @md_error(%struct.TYPE_8__*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @one_write_done(%struct.r10bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
